import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraKlepon extends StatefulWidget {
  @override
  _CaraKleponState createState() => _CaraKleponState();
}

class _CaraKleponState extends State<CaraKlepon> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'YOhbkVtqZeU', // New YouTube video ID
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
        title: Text('Cara Membuat Klepon'),
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
                '- 250 gram tepung ketan\n'
                '- 50 gram tepung beras\n'
                '- 2 lembar daun pandan\n'
                '- 200 gram gula merah, sisir\n'
                '- 150 gram kelapa parut\n'
                '- 1/2 sdt garam\n'
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
                '1. Campur tepung ketan dan tepung beras, aduk rata.\n'
                '2. Rebus daun pandan bersama air hingga mendidih, saring airnya.\n'
                '3. Tuangkan air daun pandan ke dalam campuran tepung, uleni hingga kalis.\n'
                '4. Ambil sedikit adonan, pipihkan, isi dengan gula merah, bulatkan.\n'
                '5. Rebus klepon dalam air mendidih hingga mengapung, angkat, dan tiriskan.\n'
                '6. Balur klepon dengan kelapa parut.\n'
                '7. Klepon siap disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}