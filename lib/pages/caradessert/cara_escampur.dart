import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraEsCampur extends StatefulWidget {
  @override
  _CaraEsCampurState createState() => _CaraEsCampurState();
}

class _CaraEsCampurState extends State<CaraEsCampur> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'XLLYRxd2Oho', // New YouTube video ID
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
        title: Text('Cara Membuat Es Campur'),
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
                '- Es serut secukupnya\n'
                '- Cincau, potong-potong\n'
                '- Nata de coco secukupnya\n'
                '- Kolang-kaling secukupnya\n'
                '- Buah naga, potong-potong\n'
                '- Sirup (stroberi, melon, atau rasa lainnya) secukupnya\n'
                '- Santan kental secukupnya\n'
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
                '1. Siapkan gelas saji, letakkan es serut, cincau, nata de coco, kolang-kaling, dan potongan buah naga di dalamnya.\n'
                '2. Campurkan santan kental dengan sirup sesuai selera, tambahkan gula pasir secukupnya, aduk hingga larut.\n'
                '3. Tuangkan campuran santan ke dalam gelas saji.\n'
                '4. Tambahkan es batu secukupnya.\n'
                '5. Es campur siap disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}