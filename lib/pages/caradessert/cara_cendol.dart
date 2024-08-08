import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraCendol extends StatefulWidget {
  @override
  _CaraCendolState createState() => _CaraCendolState();
}

class _CaraCendolState extends State<CaraCendol> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '2nPuhOBEbNA', // New YouTube video ID
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
        title: Text('Cara Membuat Cendol'),
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
                '- 100 gram tepung beras\n'
                '- 50 gram tepung kanji\n'
                '- 200 ml air pandan\n'
                '- 200 ml air daun suji\n'
                '- 200 ml air kelapa\n'
                '- Gula merah secukupnya\n'
                '- Garam secukupnya\n'
                '- Es batu secukupnya\n'
                '- Santan kental secukupnya\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Campur tepung beras dan tepung kanji, tambahkan air pandan sedikit demi sedikit sambil diaduk hingga rata.\n'
                '2. Masukkan adonan ke dalam plastik segitiga, potong ujungnya.\n'
                '3. Rebus adonan yang keluar dari plastik segitiga hingga mengapung, angkat, dan tiriskan.\n'
                '4. Potong cendol yang sudah direbus.\n'
                '5. Didihkan air daun suji, tambahkan gula merah dan garam secukupnya, aduk hingga larut.\n'
                '6. Siapkan gelas saji, letakkan cendol dan es batu, tuangkan santan kental dan siram dengan larutan gula merah.\n'
                '7. Cendol siap disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}