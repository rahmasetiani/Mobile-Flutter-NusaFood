import 'package:flutter/material.dart';
import 'package:flutter_app/pages/pilihan_appetizeer.dart';
import 'package:flutter_app/pages/pilihan_dessert.dart';
import 'package:flutter_app/pages/pilihan_main_course.dart';
import 'package:flutter_app/pages/pilihan_snack.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFDC5C),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add navigation to menu page here
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF000000),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 4,
                                margin: EdgeInsets.all(4),
                              ),
                              Container(
                                width: 40,
                                height: 4,
                                margin: EdgeInsets.all(4),
                              ),
                              Container(
                                width: 40,
                                height: 4,
                                margin: EdgeInsets.all(4),
                              ),
                              Container(
                                width: 40,
                                height: 4,
                                margin: EdgeInsets.all(4),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(27, 0, 0, 21),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.getFont(
                            'Maven Pro',
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Color(0xFF000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Choose the food                \n',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                height: 1.3,
                              ),
                            ),
                            TextSpan(
                              text: 'you want to recipe',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.3, 0, 3.3, 12),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Categories',
                        style: GoogleFonts.getFont(
                          'Maven Pro',
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PilihanAppetizeer(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(27, 0, 0, 27.5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 260,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/image_13.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'APPETIZER',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 200, 2),
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PilihanMainCourse(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(27, 0, 0, 27.5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 260,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/image_12.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'MAIN COURSE',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 200, 2),
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PilihanDessert(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(27, 0, 0, 27.5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 260,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/image_202.png',
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'DESSERT',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 200, 2),
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PilihanSnack(), // Navigasi ke halaman Snack
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(27, 0, 0, 27.5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 260,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/salepisang.jpeg', // Ganti dengan path gambar Snack
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(0, 4),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'SNACK',
                              style: GoogleFonts.getFont(
                                'Maven Pro',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 200, 2),
                                shadows: [
                                  Shadow(
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
