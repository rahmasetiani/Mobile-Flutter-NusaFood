// import 'package:flutter_app/pages/cara_main_course.dart';
// import 'package:flutter_app/pages/log_in.dart';
// import 'package:flutter_app/pages/menu.dart';
// import 'package:flutter_app/pages/pilihan_appetizeer.dart';
// import 'package:flutter_app/pages/pilihan_dessert.dart';
// import 'package:flutter_app/pages/pilihan_main_course.dart';
// import 'package:flutter_app/pages/sign_up.dart';
// import 'package:flutter_app/pages/tampilan_lupa_password.dart';
import 'package:flutter_app/pages/utama.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

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
       // body: SignUp(),
        //body: TampilanLupaPassword(),
        body: Utama(),

      ),
    );
  }
}
