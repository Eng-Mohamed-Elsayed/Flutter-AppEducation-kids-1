import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/Component/card_screen_Alphabet.dart';
import '/Component/appBar.dart';

import '../Controller/c_screenl.dart';

class AlphabetScreen1 extends StatefulWidget {
  @override
  _AlphabetScreen1State createState() => _AlphabetScreen1State();
}

class _AlphabetScreen1State extends State<AlphabetScreen1> {
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
        title: 'Alphabet',
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.a),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.b),
            image1: Image.asset(
              'assets/images/a1.png',
            ),
            image2: Image.asset(
              'assets/images/b1.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.c),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.d),
            image1: Image.asset(
              'assets/images/c1.png',
            ),
            image2: Image.asset(
              'assets/images/d1.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.e),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.f),
            image1: Image.asset(
              'assets/images/e1.png',
            ),
            image2: Image.asset(
              'assets/images/f1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.g),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.h),
            image1: Image.asset(
              'assets/images/g1.png',
            ),
            image2: Image.asset(
              'assets/images/h1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j),
            image1: Image.asset(
              'assets/images/i1.png',
            ),
            image2: Image.asset(
              'assets/images/j1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l),
            image1: Image.asset(
              'assets/images/k1.png',
            ),
            image2: Image.asset(
              'assets/images/l1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.m),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.n),
            image1: Image.asset(
              'assets/images/m1.png',
            ),
            image2: Image.asset(
              'assets/images/n1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.o),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.p),
            image1: Image.asset(
              'assets/images/o1.png',
            ),
            image2: Image.asset(
              'assets/images/p1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.q),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.r),
            image1: Image.asset(
              'assets/images/q1.png',
            ),
            image2: Image.asset(
              'assets/images/r1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.s),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.t),
            image1: Image.asset(
              'assets/images/s1.png',
            ),
            image2: Image.asset(
              'assets/images/t1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.u),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.v),
            image1: Image.asset(
              'assets/images/u1.png',
            ),
            image2: Image.asset(
              'assets/images/v1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.w),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.x),
            image1: Image.asset(
              'assets/images/w1.png',
            ),
            image2: Image.asset(
              'assets/images/x1.png',
            ),
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.y),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.z),
            image1: Image.asset(
              'assets/images/y1.png',
            ),
            image2: Image.asset(
              'assets/images/z1.png',
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
