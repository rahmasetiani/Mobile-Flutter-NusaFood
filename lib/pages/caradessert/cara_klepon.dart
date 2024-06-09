import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CaraKlepon extends StatelessWidget {
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
            padding: EdgeInsets.fromLTRB(22, 21, 26, 28),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
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
                            width: 218.7,
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
                                      'assets/vectors/container_1_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Text(
                                    'Gado - Gado',
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
                        margin: EdgeInsets.fromLTRB(12, 0, 3, 15),
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
                                      'assets/images/image_192.png',
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
                                    'assets/vectors/shape_1_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(27, 0, 0, 16),
                        child: Align(
                          alignment: Alignment.topCenter,
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
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 1,
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
                Positioned(
                  left: 18,
                  bottom: 33,
                  child: SizedBox(
                    height: 312,
                    child: RichText(
                      text: TextSpan(
                        text: 'Bahan-bahan:                ',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Sayuran segar (kentang rebus, tauge, ketimun, kubis, tomat, daun selada)'
                'Telur rebus (2 butir, belah dua)'
                'Tahu goreng (potong-potong)'
                'Tempe goreng (potong-potong)'
                'Bawang goreng (opsional, untuk taburan)',
                
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: '                Peralatan:                ',
                          ),
                          TextSpan(
                            text: 'Kacang tanah, sangrai dan haluskan (100 gram)'
                'Gula merah (1-2 sendok makan)'
                'Air (150 ml)'
                'Santan kental (100 ml)'
                'Garam (secukupnya)'
                'Air asam jawa (sesuai selera)',
                
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'Cara Membuat:                ',
                          ),
                          TextSpan(
                            text: 'Campur kacang tanah, gula merah, air, dan santan dalam panci. Panaskan di atas api sedang sambil diaduk hingga mendidih.'
                'Tambahkan garam dan air asam jawa, lalu aduk rata. Angkat dan biarkan saus kacang dingin.'
                'Susun sayuran, telur, tahu, dan tempe di atas piring saji.'
                'Siram saus kacang di atasnya.'
                'Taburkan bawang goreng sebagai hiasan (opsional).'
                'Gado-gado siap disajikan!',
                
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}