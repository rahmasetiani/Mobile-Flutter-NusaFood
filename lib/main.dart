import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/pages/utama.dart';
import 'package:flutter_app/pages/log_in.dart';
import 'package:flutter_app/pages/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        //body: CaraAppetizer(),
        //body: CaraDessert(),
        //body: CaraMainCourse(),
        //body: LogIn(),
        //body: Menu(),
        //body: PilihanAppetizeer(),
        //body: PilihanDessert(),
        //body: PilihanMainCourse(),
        body: SignUp(), // Ganti halaman yang ingin Anda tampilkan di sini
        //body: TampilanLupaPassword(),
        //body: Utama(),
      ),
    );
  }
}
