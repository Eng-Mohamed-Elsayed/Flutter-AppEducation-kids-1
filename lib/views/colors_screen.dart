import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '/Component/appBar.dart';
import '/Component/card_screens.dart';
import '../Controller/c_screenl.dart';

class ColorsScreen extends StatefulWidget {
  @override
  _ColorsScreenState createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
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
        title: 'Colors',
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ScreenRowColor(
            onpressedBtn1: () => onClick(newAudio: PathAudioColors.purple),
            onpressedBtn2: () => onClick(newAudio: PathAudioColors.red),
            btnColor1: Colors.purple,
            btnColor2: Colors.red,
            image2: Image.network(
              'https://www.le-monde-du-stickers.fr/10887-home_default/sticker-tache-de-couleur-rouge.jpg',
              height: 120,
              width: 120,
            ),
            image1: Image.network(
              'https://v.3bir.net/3bir/2009/04/24473_1229460773-3.jpg',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowColor(
            onpressedBtn1: () => onClick(newAudio: PathAudioColors.pink),
            onpressedBtn2: () => onClick(newAudio: PathAudioColors.orange),
            btnColor1: Colors.pink,
            btnColor2: Colors.orange,
            image1: Image.network(
              'https://tse4.mm.bing.net/th/id/OIP.KSRS6-7P5388iY0hmiIy0QHaHa?pid=ImgDet&w=612&h=612&rs=1',
              height: 120,
              width: 120,
            ),
            image2: Image.network(
              'https://media.istockphoto.com/vectors/orange-hand-drawn-paint-splash-vector-id1125844910?k=6&m=1125844910&s=612x612&w=0&h=F-PyN3T04OaXrhXtQ-VY9kzLkLXeEHnjyec82godmxI=',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowColor(
            onpressedBtn1: () => onClick(newAudio: PathAudioColors.green),
            onpressedBtn2: () => onClick(newAudio: PathAudioColors.brown),
            btnColor1: Colors.green,
            btnColor2: Colors.brown,
            image1: Image.network(
              'https://thumbs.dreamstime.com/b/fondo-con-verde-del-chapoteo-de-la-acuarela-85039553.jpg',
              height: 120,
              width: 120,
            ),
            image2: Image.network(
              'https://i.pinimg.com/originals/7e/c8/64/7ec864cca7ec51e28ae0ec57961b9c3e.png',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(height: 5),
          ScreenRowColor(
            onpressedBtn1: () => onClick(newAudio: PathAudioColors.black),
            onpressedBtn2: () => onClick(newAudio: PathAudioColors.blue),
            btnColor1: Colors.black,
            btnColor2: Colors.blue,
            image1: Image.network(
              'https://tse3.mm.bing.net/th/id/OIP.o8cHl2Wiz9K9NOAUA7jOYAHaG-?pid=ImgDet&rs=1',
              height: 120,
              width: 120,
            ),
            image2: Image.network(
              'https://www.cronachemaceratesi.it/junior/wp-content/uploads/2016/03/macchia_blu-300x225.jpg',
              height: 120,
              width: 120,
            ),
          ),
        ]),
      )),
    );
  }

  void onClick({required String newAudio}) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
