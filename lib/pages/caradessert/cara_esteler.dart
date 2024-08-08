import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraEsteler extends StatefulWidget {
  @override
  _CaraEstelerState createState() => _CaraEstelerState();
}

class _CaraEstelerState extends State<CaraEsteler> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '0NjxiSdRTdg', // New YouTube video ID
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
        title: Text('Cara Membuat Esteler'),
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
                '- 1 buah pisang raja, potong-potong\n'
                '- 1 buah singkong, potong-potong\n'
                '- 1 buah ubi jalar, potong-potong\n'
                '- 200 gram kolang-kaling\n'
                '- 200 gram nata de coco\n'
                '- 200 gram tape singkong\n'
                '- 200 gram buah naga, potong-potong\n'
                '- 200 gram es serut\n'
                '- Sirup cocopandan secukupnya\n'
                '- Susu kental manis secukupnya\n'
                '- Gula pasir secukupnya\n'
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
                '1. Siapkan mangkuk saji, letakkan potongan pisang, singkong, ubi jalar, kolang-kaling, nata de coco, tape singkong, dan potongan buah naga di dalamnya.\n'
                '2. Tuangkan sirup cocopandan, susu kental manis, dan gula pasir secukupnya di atasnya.\n'
                '3. Tambahkan es serut.\n'
                '4. Esteler siap disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}