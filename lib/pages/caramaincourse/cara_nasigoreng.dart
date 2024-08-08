import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraNasiGoreng extends StatefulWidget {
  @override
  _CaraNasiGorengState createState() => _CaraNasiGorengState();
}

class _CaraNasiGorengState extends State<CaraNasiGoreng> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
   _controller = YoutubePlayerController(
      initialVideoId: 'HWYhoO8PCNQ', // New YouTube video ID
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
        title: Text('Cara Memasak Nasi Goreng'),
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
                '- 400g nasi\n'
                '- 2 sdm minyak goreng\n'
                '- 2 butir telur, kocok lepas\n'
                '- 100g daging ayam/gurita/udang (opsional)\n'
                '- 2 siung bawang merah, cincang halus\n'
                '- 2 siung bawang putih, cincang halus\n'
                '- 2 buah cabai merah, iris tipis (opsional)\n'
                '- 1 batang daun bawang, iris tipis\n'
                '- 2 sdm kecap manis\n'
                '- Garam dan merica secukupnya\n'
                '- Bahan pelengkap (irisan mentimun, tomat, kerupuk, dan acar)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Panaskan minyak dalam wajan, tumis bawang merah, bawang putih, dan cabai hingga harum.\n'
                '2. Masukkan telur, aduk cepat hingga setengah matang.\n'
                '3. Tambahkan daging ayam/gurita/udang (jika menggunakan), aduk hingga matang.\n'
                '4. Masukkan nasi dan kecap manis, aduk rata.\n'
                '5. Tambahkan garam, merica, dan daun bawang, aduk hingga tercampur.\n'
                '6. Sajikan nasi goreng dengan pelengkap yang diinginkan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}