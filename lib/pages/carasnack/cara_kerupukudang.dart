import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraKerupukUdang extends StatefulWidget {
  @override
  _CaraKerupukUdangState createState() => _CaraKerupukUdangState();
}

class _CaraKerupukUdangState extends State<CaraKerupukUdang> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'cQ7tVUHom18', // New YouTube video ID
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
        title: Text('Cara Membuat Kerupuk Udang'),
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
                '- Udang segar secukupnya\n'
                '- Tepung tapioka secukupnya\n'
                '- Garam secukupnya\n'
                '- Merica bubuk secukupnya\n'
                '- Penyedap rasa secukupnya (opsional)\n'
                '- Minyak goreng secukupnya\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Bersihkan udang, kupas kulitnya dan buang kepala serta ekornya.\n'
                '2. Lumuri udang dengan campuran garam, merica bubuk, dan penyedap rasa (jika digunakan).\n'
                '3. Balur udang dengan tepung tapioka hingga rata.\n'
                '4. Panaskan minyak goreng dalam wajan.\n'
                '5. Goreng udang dalam minyak panas hingga kering dan mengembang.\n'
                '6. Angkat dan tiriskan kerupuk udang.\n'
                '7. Biarkan dingin sebelum disajikan.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}