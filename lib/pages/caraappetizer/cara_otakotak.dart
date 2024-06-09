import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CaraOtakOtak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFC9FA06),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -75,
            child: Opacity(
              opacity: 0.85,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 375,
                  height: 763,
                ),
              ),
            ),
          ),
    Container(
            padding: EdgeInsets.fromLTRB(22, 21, 29, 37),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 5,
                  right: -3,
                  bottom: -9,
                  child: Opacity(
                    opacity: 0.85,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF000000)),
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFFFFFFD),
                      ),
                      child: Container(
                        width: 322,
                        height: 358,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 217.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: SizedBox(
                                    width: 9,
                                    height: 18,
                                    child: SvgPicture.asset(
                                      'assets/vectors/container_7_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Text(
                                    'Nasi Goreng',
                                    style: GoogleFonts.getFont(
                                      'Maven Pro',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12, 0, 0, 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/rectangle_33.png',
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/image_19.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 312,
                                  height: 146,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 130,
                              top: 55,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(23.5),
                                ),
                                child: Container(
                                  width: 47,
                                  height: 47,
                                ),
                              ),
                            ),
                      Container(
                                height: 146,
                                padding: EdgeInsets.fromLTRB(0, 55, 5, 44),
                                child: SizedBox(
                                  width: 47,
                                  height: 47,
                                  child: SvgPicture.asset(
                                    'assets/vectors/shape_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(31, 0, 31, 29),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 232,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: Color(0xF27F461B),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(0, 4),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(13.5, 3, 13.5, 4),
                                    child: Text(
                                      'PROGRESS',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    color: Color(0xF27F461B),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(0, 4),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    width: 91,
                                    padding: EdgeInsets.fromLTRB(0, 3, 1, 4),
                                    child: Text(
                                      'FINISH',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(21, 0, 12.1, 0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Bahan-bahan:                      ',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0xFF000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Nasi putih (2-3 piring)'
                      'Minyak goreng'
                      'Bawang putih (3 siung)'
                     ' Bawang merah (2 buah)'
                      'Cabai merah besar (sesuai selera)'
                     ' Daging ayam (200 gram) atau bahan pengganti seperti udang atau daging sapi'
                      'Telur (2 butir)'
                     ' Kecap manis (2-3 sendok makan)'
                     ' Kecap asin (1-2 sendok makan)'
                     ' Garam'
                      'Merica bubuk'
                      'Bawang merah goreng (opsional)                      ',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  height: 1.3,
                                ),
                              ),
                              TextSpan(
                                text: '                      Peralatan:                      ',
                              ),
                              TextSpan(
                                text: 'Wajan'
                      'Spatula atau sendok kayu'
                      'Mangkuk kecil',
                      
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  height: 1.3,
                                ),
                              ),
                              TextSpan(
                                text: 'Cara Membuat:                      ',
                              ),
                              TextSpan(
                                text: 'Tumis bawang putih, bawang merah, dan cabai merah hingga harum.'
                      'Masukkan daging ayam, tumis hingga matang.'
                     ' Tuangkan telur kocok, aduk hingga setengah matang.'
                      'Masukkan nasi putih, kecap manis, kecap asin, garam, dan merica. Aduk hingga tercampur rata.'
                     ' Tumis hingga nasi kering dan berwarna kecokelatan.',
                      
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -6,
                  bottom: -8,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image_15.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 12,
                      height: 357,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}