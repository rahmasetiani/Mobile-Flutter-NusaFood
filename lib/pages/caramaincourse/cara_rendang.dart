import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraRendang extends StatefulWidget {
  @override
  _CaraRendangState createState() => _CaraRendangState();
}

class _CaraRendangState extends State<CaraRendang> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'DMcFqtm1lfY', // New YouTube video ID
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
        title: Text('Cara Memasak Rendang'),
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
                '- 500g daging sapi\n'
                '- 400ml santan kental\n'
                '- 2 lembar daun salam\n'
                '- 2 batang serai, memarkan\n'
                '- 3 cm lengkuas, memarkan\n'
                '- 5 buah cabai merah keriting\n'
                '- 5 buah cabai merah besar\n'
                '- 10 buah cabai rawit\n'
                '- 6 butir bawang merah\n'
                '- 4 siung bawang putih\n'
                '- 3 cm kunyit\n'
                '- 3 cm jahe\n'
                '- 3 buah kemiri\n'
                '- 1 sdt ketumbar\n'
                '- 1 sdt jintan\n'
                '- 1/2 sdt merica\n'
                '- 1 sdt garam\n'
                '- 1 sdt gula pasir\n'
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
                '1. Panaskan minyak dalam wajan, tumis bumbu halus hingga harum.\n'
                '2. Masukkan daging sapi, aduk hingga berubah warna.\n'
                '3. Tuangkan santan, tambahkan daun salam, serai, dan lengkuas.\n'
                '4. Masak dengan api kecil hingga daging empuk dan bumbu meresap.\n'
                '5. Masak hingga santan mengental dan berminyak.\n'
                '6. Rendang siap disajikan dengan nasi hangat.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}