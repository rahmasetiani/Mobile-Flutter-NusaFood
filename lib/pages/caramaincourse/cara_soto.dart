import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraSoto extends StatefulWidget {
  @override
  _CaraSotoState createState() => _CaraSotoState();
}

class _CaraSotoState extends State<CaraSoto> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'LzrN5HReVvI', // New YouTube video ID
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
        title: Text('Cara Memasak Soto'),
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
                '- 500g daging ayam\n'
                '- 2 liter air\n'
                '- 2 batang serai, memarkan\n'
                '- 3 lembar daun salam\n'
                '- 3 lembar daun jeruk\n'
                '- 2 cm jahe, memarkan\n'
                '- 2 cm lengkuas, memarkan\n'
                '- 1 sdt merica butiran\n'
                '- Garam secukupnya\n'
                '- Gula secukupnya\n'
                '- 200g tauge\n'
                '- 2 batang seledri, iris halus\n'
                '- Bawang goreng untuk taburan\n'
                '- Jeruk nipis untuk pelengkap\n'
                '- Sambal cabe rawit (opsional)\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Rebus daging ayam dalam air bersama serai, daun salam, daun jeruk, jahe, lengkuas, merica, garam, dan gula hingga ayam empuk.\n'
                '2. Angkat ayam, tiriskan, lalu suwir-suwir dagingnya.\n'
                '3. Didihkan kembali kaldu, tambahkan tauge, seledri, dan suwiran ayam, masak hingga mendidih kembali.\n'
                '4. Soto siap disajikan dengan bawang goreng, jeruk nipis, dan sambal cabe rawit jika suka.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}