import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/caraappetizer/cara_gado.dart';  // Import halaman cara gado
import 'package:flutter_app/pages/caraappetizer/cara_rujakbuah.dart';  // Import halaman cara rujak buah
import 'package:flutter_app/pages/caraappetizer/cara_otakotak.dart';  // Import halaman cara otak-otak
import 'package:flutter_app/pages/caraappetizer/cara_pempek.dart';  // Import halaman cara pempek

class PilihanAppetizeer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appetizer'),
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
                'Gado-gado',
                'assets/images/image_192.png',
                'Gado-gado adalah salad sayuran yang disajikan dengan saus kacang. Biasanya terdiri dari sayuran seperti kentang rebus, tauge, ketimun, kubis, dan tomat, yang disiram dengan saus kacang yang kental.',
                context,
                'GadoGado', // Key for Gado-gado
              ),
              _buildMenuItem(
                'Rujak Buah',
                'assets/images/image_201.png',
                'Rujak adalah hidangan buah yang dicampur dengan saus pedas-manis. Buah-buahan seperti mangga, nanas, jambu, dan mentimun biasanya digunakan dalam rujak.',
                context,
                'RujakBuah', // Key for Rujak Buah
              ),
              _buildMenuItem(
                'Otak-otak',
                'assets/images/rectangle_32.png',
                'Otak-otak adalah makanan yang terbuat dari ikan yang dicampur dengan bumbu dan dibungkus menggunakan daun pisang, kemudian dipanggang atau dibakar.',
                context,
                'OtakOtak', // Key for Otak-otak
              ),
              _buildMenuItem(
                'Pempek',
                'assets/images/rectangle_301.png',
                'Pempek adalah hidangan khas Palembang yang terbuat dari ikan yang digiling dan dicampur dengan tepung sagu serta bumbu lainnya. Pempek biasanya disajikan dengan saus cuko yang pedas.',
                context,
                'Pempek', // Key for Pempek
              ),
               _buildMenuItem(
                'Gado-gado',
                'assets/images/image_192.png',
                'Gado-gado adalah salad sayuran yang disajikan dengan saus kacang. Biasanya terdiri dari sayuran seperti kentang rebus, tauge, ketimun, kubis, dan tomat, yang disiram dengan saus kacang yang kental.',
                context,
                'GadoGado', // Key for Gado-gado
              ),
              _buildMenuItem(
                'Rujak Buah',
                'assets/images/image_201.png',
                'Rujak adalah hidangan buah yang dicampur dengan saus pedas-manis. Buah-buahan seperti mangga, nanas, jambu, dan mentimun biasanya digunakan dalam rujak.',
                context,
                'RujakBuah', // Key for Rujak Buah
              ),
              _buildMenuItem(
                'Otak-otak',
                'assets/images/rectangle_32.png',
                'Otak-otak adalah makanan yang terbuat dari ikan yang dicampur dengan bumbu dan dibungkus menggunakan daun pisang, kemudian dipanggang atau dibakar.',
                context,
                'OtakOtak', // Key for Otak-otak
              ),
              _buildMenuItem(
                'Pempek',
                'assets/images/rectangle_301.png',
                'Pempek adalah hidangan khas Palembang yang terbuat dari ikan yang digiling dan dicampur dengan tepung sagu serta bumbu lainnya. Pempek biasanya disajikan dengan saus cuko yang pedas.',
                context,
                'Pempek', // Key for Pempek
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
          case 'GadoGado':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraGado()),
            );
            break;
          case 'RujakBuah':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraRujakBuah()),
            );
            break;
          case 'OtakOtak':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraOtakOtak()),
            );
            break;
          case 'Pempek':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CaraPempek()),
            );
            break;
          default:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PilihanAppetizeer()), // Default page, can be adjusted if needed
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
