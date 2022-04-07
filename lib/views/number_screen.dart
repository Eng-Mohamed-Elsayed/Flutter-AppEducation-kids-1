import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '/Component/appBar.dart';
import '/Component/card_screens.dart';
import '../Controller/c_screenl.dart';

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
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
        title: 'Numbers',
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/number1.jpg'),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.orange, width: 5),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      ScreenRow(
                        onpressedBtn1: () =>
                            onClick(newAudio: PathAudioNumber.num1),
                        onpressedBtn2: () =>
                            onClick(newAudio: PathAudioNumber.num2),
                        onpressedBtn3: () =>
                            onClick(newAudio: PathAudioNumber.num3),
                        title1: '1',
                        title2: '2',
                        title3: '3',
                        btnColor2: Colors.orange.shade400,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      ScreenRow(
                        onpressedBtn1: () =>
                            onClick(newAudio: PathAudioNumber.num4),
                        onpressedBtn2: () =>
                            onClick(newAudio: PathAudioNumber.num5),
                        onpressedBtn3: () =>
                            onClick(newAudio: PathAudioNumber.num6),
                        title1: '4',
                        title2: '5',
                        title3: '6',
                        btnColor1: Colors.orange.shade400,
                      ),
                      SizedBox(height: 2),
                      ScreenRow(
                        onpressedBtn1: () =>
                            onClick(newAudio: PathAudioNumber.num7),
                        onpressedBtn2: () =>
                            onClick(newAudio: PathAudioNumber.num8),
                        onpressedBtn3: () =>
                            onClick(newAudio: PathAudioNumber.num9),
                        title1: '7',
                        title2: '8',
                        title3: '9',
                        btnColor3: Colors.orange.shade400,
                      ),
                    ]),
                  )
                ],
              ))),
    );
  }

  void onClick({required String newAudio}) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
