import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraRujakBuah extends StatefulWidget {
  @override
  _CaraRujakBuahState createState() => _CaraRujakBuahState();
}

class _CaraRujakBuahState extends State<CaraRujakBuah> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '84Faf9IMLAE', // New YouTube video ID
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
        title: Text('Cara Membuat Rujak Buah'),
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
                '- 500 gram buah-buahan (semangka, jambu, nanas, pepaya, mangga, dll), potong-potong\n'
                '- 100 gram gula merah\n'
                '- 2 buah cabe rawit\n'
                '- 3 buah cabai merah\n'
                '- 2 siung bawang putih\n'
                '- 1 sdt terasi bakar\n'
                '- 1/2 sdt garam\n'
                '- Air asam jawa secukupnya\n'
                '- Kacang tanah goreng secukupnya\n'
                '- Kerupuk udang secukupnya\n'
                '- Kerupuk bawang secukupnya\n'
                '- Gula pasir secukupnya\n'
                '- Garam secukupnya\n'
                '- Jeruk limo secukupnya\n'
                '- Air secukupnya\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Haluskan gula merah, cabe rawit, cabai merah, bawang putih, terasi, dan garam.\n'
                '2. Campur bumbu halus dengan air asam jawa, aduk rata.\n'
                '3. Tambahkan gula pasir dan garam secukupnya, aduk hingga larut.\n'
                '4. Siapkan buah-buahan dalam mangkuk, tuang bumbu di atasnya.\n'
                '5. Taburkan kacang tanah goreng.\n'
                '6. Sajikan rujak buah dengan kerupuk udang, kerupuk bawang, dan jeruk limo.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}