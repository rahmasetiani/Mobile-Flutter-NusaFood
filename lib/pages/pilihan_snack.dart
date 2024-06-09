import 'package:flutter/material.dart';
import 'package:flutter_app/pages/carasnack/cara_keripikpisang.dart';
import 'package:flutter_app/pages/carasnack/cara_kerupukudang.dart';
import 'package:flutter_app/pages/carasnack/cara_manggleng.dart';
import 'package:flutter_app/pages/carasnack/cara_salepisang.dart';
import 'package:google_fonts/google_fonts.dart';


class PilihanSnack extends StatelessWidget {
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
          padding: EdgeInsets.fromLTRB(21, 27, 20,
              100), // Extend padding to push yellow background downwards
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              _buildMenuItem(
                'Kripik Pisang',
                'assets/images/snack.jpg',
                'Kripik pisang adalah makanan ringan tradisional Indonesia yang terbuat dari irisan pisang yang digoreng hingga renyah.',
                context,
                'KeripikPisang',
              ),
              _buildMenuItem(
                'Manggleng Singkong',
                'assets/images/manggleng.jpeg',
                'Manggleng singkong adalah makanan ringan khas Indonesia yang terbuat dari irisan singkong yang dikeringkan dan digoreng hingga renyah.',
                context,
                'Manggleng', // Key for Rendang
              ),
              _buildMenuItem(
                'Sale Pisang',
                'assets/images/salepisang.jpeg',
                'Sale pisang adalah makanan tradisional Indonesia yang terbuat dari pisang yang diiris tipis, dijemur hingga kering, dan kemudian digoreng atau dipanggang hingga renyah.',
                context,
                'SalePisang', // Key for Oporayam
              ),
              _buildMenuItem(
                'Kerupuk Udang',
                'assets/images/kerupukudang.jpeg',
                'Kerupuk udang adalah makanan ringan khas Indonesia yang terbuat dari adonan tepung tapioka dan udang yang dibentuk, dikeringkan, lalu digoreng hingga mengembang dan renyah.',
                context,
                'KerupukUdang', // Key for Soto
              ),
              _buildMenuItem(
                'Kripik Pisang',
                'assets/images/snack.jpg',
                'Kripik pisang adalah makanan ringan tradisional Indonesia yang terbuat dari irisan pisang yang digoreng hingga renyah.',
                context,
                'KeripikPisang',
              ),
              _buildMenuItem(
                'Manggleng Singkong',
                'assets/images/manggleng.jpeg',
                'Manggleng singkong adalah makanan ringan khas Indonesia yang terbuat dari irisan singkong yang dikeringkan dan digoreng hingga renyah.',
                context,
                'Manggleng', // Key for Rendang
              ),
              _buildMenuItem(
                'Sale Pisang',
                'assets/images/salepisang.jpeg',
                'Sale pisang adalah makanan tradisional Indonesia yang terbuat dari pisang yang diiris tipis, dijemur hingga kering, dan kemudian digoreng atau dipanggang hingga renyah.',
                context,
                'SalePisang', // Key for Oporayam
              ),
              _buildMenuItem(
                'Kerupuk Udang',
                'assets/images/kerupukudang.jpeg',
                'Kerupuk udang adalah makanan ringan khas Indonesia yang terbuat dari adonan tepung tapioka dan udang yang dibentuk, dikeringkan, lalu digoreng hingga mengembang dan renyah.',
                context,
                'KerupukUdang', // Key for Soto
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String description,
      BuildContext context, String key) {
    return GestureDetector(
      onTap: () {
        switch (key) {
          case 'KeripikPisang':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraKeripikPisang()),
            );
            break;
          case 'Manggleng':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraManggleng()),
            );
            break;
          case 'SalePisang':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraSalePisang()),
            );
            break;
          case 'KerupukUdang':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraKerupukUdang()),
            );
            break;
          default:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PilihanSnack()), // Default page, can be adjusted if needed
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
