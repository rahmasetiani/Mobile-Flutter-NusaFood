import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraOporAyam extends StatefulWidget {
  @override
  _CaraOporAyamState createState() => _CaraOporAyamState();
}

class _CaraOporAyamState extends State<CaraOporAyam> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'PyC0MmzSPB8', // New YouTube video ID
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
        title: Text('Cara Memasak Opor Ayam'),
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
                '- 1 ekor ayam, potong menjadi beberapa bagian\n'
                '- 500 ml santan kental\n'
                '- 2 lembar daun salam\n'
                '- 2 batang serai, memarkan\n'
                '- 3 cm lengkuas, memarkan\n'
                '- 3 buah kentang, kupas dan potong-potong\n'
                '- Garam dan gula secukupnya\n'
                '- Minyak untuk menumis\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Tumis bumbu halus hingga harum.\n'
                '2. Masukkan potongan ayam, aduk hingga berubah warna.\n'
                '3. Tuangkan santan, tambahkan daun salam, serai, dan lengkuas.\n'
                '4. Masak dengan api kecil hingga ayam empuk.\n'
                '5. Tambahkan kentang, garam, dan gula, aduk rata.\n'
                '6. Masak hingga kentang empuk dan bumbu meresap.\n'
                '7. Opor ayam siap disajikan dengan nasi putih hangat.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}