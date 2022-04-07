import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';

class AlphabetScreen extends StatefulWidget {
  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBarSimple(
        title: 'الحروف',
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp2),
            image1: Image.asset(
              'assets/images/alp1.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp2.jpg',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp3),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp4),
            image1: Image.asset(
              'assets/images/alp3.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp4.jpg',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp5),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp6),
            image1: Image.asset(
              'assets/images/alp5.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp6.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp7),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp8),
            image1: Image.asset(
              'assets/images/alp7.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp8.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp9),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp10),
            image1: Image.asset(
              'assets/images/alp9.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp10.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp11),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp12),
            image1: Image.asset(
              'assets/images/alp11.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp12.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp13),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp14),
            image1: Image.asset(
              'assets/images/alp13.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp14.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp15),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp16),
            image1: Image.asset(
              'assets/images/alp15.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp16.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp17),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp18),
            image1: Image.asset(
              'assets/images/alp17.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp18.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp19),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp20),
            image1: Image.asset(
              'assets/images/alp19.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp20.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp21),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp22),
            image1: Image.asset(
              'assets/images/alp21.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp22.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp23),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp24),
            image1: Image.asset(
              'assets/images/alp23.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp24.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp25),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp26),
            image1: Image.asset(
              'assets/images/alp25.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp26.jpg',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet.alp27),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet.alp28),
            image1: Image.asset(
              'assets/images/alp27.jpg',
            ),
            image2: Image.asset(
              'assets/images/alp28.jpg',
            ),
          ),
        ]),
      )),
    );
  }

  void onClick({
    required String newAudio,
  }) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
