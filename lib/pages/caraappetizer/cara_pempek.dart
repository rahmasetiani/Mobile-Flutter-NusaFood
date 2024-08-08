import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CaraPempek extends StatefulWidget {
  @override
  _CaraPempekState createState() => _CaraPempekState();
}

class _CaraPempekState extends State<CaraPempek> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'fIoE3Yze1Rc', // New YouTube video ID
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
        title: Text('Cara Membuat Pempek'),
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
                '- 300 gram tepung terigu protein tinggi\n'
                '- 150 ml air\n'
                '- 100 ml air es\n'
                '- 1/2 sdt garam\n'
                '- 200 gram ikan tenggiri, haluskan\n'
                '- 1 sdm sagu tani, larutkan dalam 50 ml air\n'
                '- Minyak untuk menggoreng\n'
                '- Telur ayam (opsional)\n'
                '- Bubuk bawang putih (opsional)\n'
                '- Bubuk bawang merah (opsional)\n'
                '- Gula pasir (opsional)\n'
                '- Cuka (opsional)\n'
                '- Bumbu rujak (opsional)\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Cara Pembuatan:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '1. Campur tepung terigu, air, air es, dan garam, uleni hingga kalis.\n'
                '2. Ambil sedikit adonan, pipihkan, isi dengan adonan ikan tenggiri, bulatkan.\n'
                '3. Rebus pempek dalam air mendidih hingga mengapung.\n'
                '4. Angkat, tiriskan.\n'
                '5. Goreng dalam minyak panas hingga kecokelatan.\n'
                '6. Pempek siap disajikan dengan cuko atau sambal.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}