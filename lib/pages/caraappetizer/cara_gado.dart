import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/auth_repo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraGado extends StatefulWidget {
  @override
  _CaraGadoState createState() => _CaraGadoState();
}

class _CaraGadoState extends State<CaraGado> {
  late YoutubePlayerController _controller;
  final TextEditingController _commentController = TextEditingController();
  File? _image;
  final AuthRepo _authRepo = AuthRepo();

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'Jm1ThTdVgwo', // ID Video YouTube
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        _image = File(image.path);
      }
    });
  }

  Future<void> _uploadCommentAndImage() async {
    if (_image == null || _commentController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select an image and enter a comment')),
      );
      return;
    }

    try {
      await _authRepo.uploadCommentAndImage(
        comment: _commentController.text,
        image: _image!,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Comment and image uploaded successfully')),
      );
      setState(() {
        _image = null;
        _commentController.clear();
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara Memasak Gado-Gado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                onReady: () {
                  _controller.addListener(() {});
                },
              ),
              SizedBox(height: 8),
              Text(
                'Klik gambar di atas untuk menonton video tutorial.',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16),
              Text(
                'Bahan Masakan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '- 200g kacang tanah\n'
                '- 100ml air matang\n'
                '- 1 siung bawang putih\n'
                '- 2 lembar daun jeruk\n'
                '- 2 sdm air asam jawa\n'
                '- Garam secukupnya\n'
                '- Gula merah secukupnya\n'
                '- Sayuran (kentang, tauge, kol, dll)\n'
                '- Tahu dan tempe\n'
                '- Telur rebus\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Goreng kacang tanah hingga matang.\n'
                '2. Haluskan kacang tanah dengan bawang putih dan daun jeruk.\n'
                '3. Campurkan bumbu halus dengan air asam jawa, garam, dan gula merah.\n'
                '4. Rebus sayuran hingga matang.\n'
                '5. Goreng tahu dan tempe hingga kecokelatan.\n'
                '6. Sajikan sayuran, tahu, tempe, dan telur dengan saus kacang.\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Tambahkan Komentar dan Foto Hasil Masakan Anda:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Komentar',
                ),
                maxLines: 3,
              ),
              SizedBox(height: 8),
              _image == null
                  ? Text('No image selected.')
                  : Image.file(_image!),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Pilih Gambar'),
              ),
              ElevatedButton(
                onPressed: _uploadCommentAndImage,
                child: Text('Unggah Komentar dan Gambar'),
              ),
              SizedBox(height: 16),
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection('comments').orderBy('timestamp', descending: true).snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: snapshot.data!.docs.map((doc) {
                      return ListTile(
                        title: Text(doc['comment']),
                        subtitle: doc['imageUrl'] != null
                            ? Image.network(doc['imageUrl'])
                            : null,
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}