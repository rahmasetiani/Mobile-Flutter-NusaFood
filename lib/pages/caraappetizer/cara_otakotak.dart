import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraOtakOtak extends StatefulWidget {
  @override
  _CaraOtakOtakState createState() => _CaraOtakOtakState();
}

class _CaraOtakOtakState extends State<CaraOtakOtak> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'vN63IoBN85Y', // New YouTube video ID
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara Membuat Otak-Otak'),
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
                '- 500 gram ikan tenggiri, haluskan\n'
                '- 300 ml santan kental\n'
                '- 2 butir telur\n'
                '- 100 gram tepung sagu\n'
                '- 2 sdm minyak goreng untuk menumis\n'
                '- 2 lembar daun jeruk, iris halus\n'
                '- 2 batang serai, memarkan\n'
                '- 3 lembar daun salam\n'
                '- 2 sdm air asam jawa\n'
                '- 2 sdt garam\n'
                '- 1 sdt gula pasir\n'
                '- 6 lembar daun pisang, potong-potong\n'
                '- Tusukan sate secukupnya\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Panaskan minyak, tumis daun jeruk, serai, dan daun salam hingga harum.\n'
                '2. Campurkan santan, telur, tepung sagu, air asam jawa, garam, dan gula.\n'
                '3. Aduk rata hingga kalis.\n'
                '4. Masukkan ikan tenggiri, aduk rata.\n'
                '5. Ambil selembar daun pisang, letakkan 1 sdm adonan, lipat daun pisang, tusuk dengan tusukan sate.\n'
                '6. Lakukan hingga adonan habis.\n'
                '7. Kukus otak-otak selama 20-25 menit hingga matang.\n'
                '8. Otak-otak siap disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}