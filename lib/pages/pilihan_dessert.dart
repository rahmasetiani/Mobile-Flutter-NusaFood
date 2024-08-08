import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/caradessert/cara_escampur.dart';  // Import halaman cara es campur
import 'package:flutter_app/pages/caradessert/cara_esteler.dart';  // Import halaman cara es teler
import 'package:flutter_app/pages/caradessert/cara_klepon.dart';  // Import halaman cara klepon
import 'package:flutter_app/pages/caradessert/cara_cendol.dart';  // Import halaman cara cendol

class PilihanDessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert'),
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
                'Es Campur',
                'assets/images/image_191.png',
                'Es Campur adalah minuman khas Indonesia yang terdiri dari campuran berbagai bahan seperti cincau, kolang-kaling, alpukat, dan kelapa muda yang disajikan dengan es serut dan sirup manis.',
                context,
                'EsCampur', // Key for Es Campur
              ),
              _buildMenuItem(
                'Es Teler',
                'assets/images/image_202.png',
                'Es Teler adalah minuman es khas Indonesia yang terbuat dari campuran buah-buahan seperti nangka, alpukat, dan kelapa muda dengan santan dan susu kental manis.',
                context,
                'EsTeler', // Key for Es Teler
              ),
              _buildMenuItem(
                'Klepon',
                'assets/images/rectangle_30.png',
                'Klepon adalah kue tradisional Indonesia yang terbuat dari tepung ketan yang diisi dengan gula merah dan ditaburi dengan kelapa parut.',
                context,
                'Klepon', // Key for Klepon
              ),
              _buildMenuItem(
                'Cendol',
                'assets/images/rectangle_322.png',
                'Cendol adalah minuman tradisional yang terdiri dari tepung beras yang diberi warna hijau dan disajikan dengan santan, gula merah cair, dan es serut.',
                context,
                'Cendol', // Key for Cendol
              ),
              _buildMenuItem(
                'Es Campur',
                'assets/images/image_191.png',
                'Es Campur adalah minuman khas Indonesia yang terdiri dari campuran berbagai bahan seperti cincau, kolang-kaling, alpukat, dan kelapa muda yang disajikan dengan es serut dan sirup manis.',
                context,
                'EsCampur', // Key for Es Campur
              ),
              _buildMenuItem(
                'Es Teler',
                'assets/images/image_202.png',
                'Es Teler adalah minuman es khas Indonesia yang terbuat dari campuran buah-buahan seperti nangka, alpukat, dan kelapa muda dengan santan dan susu kental manis.',
                context,
                'EsTeler', // Key for Es Teler
              ),
              _buildMenuItem(
                'Klepon',
                'assets/images/rectangle_30.png',
                'Klepon adalah kue tradisional Indonesia yang terbuat dari tepung ketan yang diisi dengan gula merah dan ditaburi dengan kelapa parut.',
                context,
                'Klepon', // Key for Klepon
              ),
              _buildMenuItem(
                'Cendol',
                'assets/images/rectangle_322.png',
                'Cendol adalah minuman tradisional yang terdiri dari tepung beras yang diberi warna hijau dan disajikan dengan santan, gula merah cair, dan es serut.',
                context,
                'Cendol', // Key for Cendol
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
          case 'EsCampur':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraEsCampur()),
            );
            break;
          case 'EsTeler':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraEsteler()),
            );
            break;
          case 'Klepon':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraKlepon()),
            );
            break;
          case 'Cendol':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraCendol()),
            );
            break;
          default:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PilihanDessert()), // Default page, can be adjusted if needed
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
