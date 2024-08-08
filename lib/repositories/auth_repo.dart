import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> login({required String email, required String password}) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      throw e.message ?? 'Something wrong!';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register({required String email, required String password}) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      throw e.message ?? 'Something wrong!';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> uploadCommentAndImage({required String comment, required File image}) async {
    try {
      // Upload image to Firebase Storage
      final String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final Reference storageRef = _storage.ref().child('images/$fileName');
      final UploadTask uploadTask = storageRef.putFile(image);
      final TaskSnapshot snapshot = await uploadTask;
      final String downloadUrl = await snapshot.ref.getDownloadURL();

      // Save comment and image URL to Firestore
      await _firestore.collection('comments').add({
        'comment': comment,
        'imageUrl': downloadUrl,
        'timestamp': Timestamp.now(),
        'userId': _auth.currentUser?.uid, // Optional: track which user uploaded the comment
      });
    } on FirebaseException catch (e) {
      throw e.message ?? 'Something wrong!';
    } catch (e) {
      rethrow;
    }
  }
}