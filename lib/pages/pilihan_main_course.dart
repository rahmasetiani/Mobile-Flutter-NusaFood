import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/caramaincourse/cara_nasigoreng.dart';  // Import halaman cara es campur
import 'package:flutter_app/pages/caramaincourse/cara_oporayam.dart';  // Import halaman cara es teler
import 'package:flutter_app/pages/caramaincourse/cara_rendang.dart';  // Import halaman cara klepon
import 'package:flutter_app/pages/caramaincourse/cara_soto.dart';  // Import halaman cara cendol

class PilihanMainCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Course'),
      ),
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
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(21, 27, 20, 100), // Extend padding to push yellow background downwards
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              _buildMenuItem(
                'Nasi Goreng',
                'assets/images/image_19.png',
                'Nasi goreng adalah makanan khas Indonesia yang terdiri dari nasi yang digoreng dalam minyak sayur bersama bumbu-bumbu seperti bawang putih, bawang merah, kecap manis, saus tiram.',
                context,
                'NasiGoreng',
              ),
              _buildMenuItem(
                'Rendang',
                'assets/images/image_20.png',
                'Rendang adalah masakan daging sapi yang dimasak dalam santan dan rempah-rempah, kemudian dimasak hingga kering. Rendang memiliki cita rasa yang kaya dan biasanya dimakan dengan nasi.',
                context,
                'Rendang', // Key for Rendang
              ),
              _buildMenuItem(
                'Opor Ayam',
                'assets/images/rectangle_321.png',
                'Opor ayam adalah masakan yang terbuat dari ayam yang dimasak dengan santan dan bumbu-bumbu. Opor ayam biasanya dimakan dengan ketupat atau nasi.',
                context,
                'OporAyam', // Key for Oporayam
              ),
              _buildMenuItem(
                'Soto',
                'assets/images/rectangle_302.png',
                'Soto adalah makanan khas Indonesia berupa sup yang terdiri dari kaldu daging dan sayuran. Soto biasa dihidangkan dengan nasi, perkedel, dan krupuk.',                context,
                'Soto', // Key for Soto
              ),
              _buildMenuItem(
                'Nasi Goreng',
                'assets/images/image_19.png',
                'Nasi goreng adalah makanan khas Indonesia yang terdiri dari nasi yang digoreng dalam minyak sayur bersama bumbu-bumbu seperti bawang putih, bawang merah, kecap manis, saus tiram.',
                context,
                'NasiGoreng',
              ),
              _buildMenuItem(
                'Rendang',
                'assets/images/image_20.png',
                'Rendang adalah masakan daging sapi yang dimasak dalam santan dan rempah-rempah, kemudian dimasak hingga kering. Rendang memiliki cita rasa yang kaya dan biasanya dimakan dengan nasi.',
                context,
                'Rendang', // Key for Rendang
              ),
              _buildMenuItem(
                'Opor Ayam',
                'assets/images/rectangle_321.png',
                'Opor ayam adalah masakan yang terbuat dari ayam yang dimasak dengan santan dan bumbu-bumbu. Opor ayam biasanya dimakan dengan ketupat atau nasi.',
                context,
                'OporAyam', // Key for Oporayam
              ),
              _buildMenuItem(
                'Soto',
                'assets/images/rectangle_302.png',
                'Soto adalah makanan khas Indonesia berupa sup yang terdiri dari kaldu daging dan sayuran. Soto biasa dihidangkan dengan nasi, perkedel, dan krupuk.',                context,
                'Soto', // Key for Soto
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String description, BuildContext context, String key) { 
    return GestureDetector(
      onTap: () {
        switch (key) {
          case 'NasiGoreng':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraNasiGoreng()),
            );
            break;
          case 'Rendang':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraRendang()),
            );
            break;
          case 'OporAyam':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraOporAyam()),
            );
            break;
          case 'Soto':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraSoto()),
            );
            break;
          default:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PilihanMainCourse()), // Default page, can be adjusted if needed
            );
        }
      },

      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.85),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.mavenPro(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: GoogleFonts.mavenPro(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF000000),
                    ),
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mulai Memasak',
                    style: GoogleFonts.mavenPro(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFFA82222),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
