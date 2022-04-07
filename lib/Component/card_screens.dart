import 'package:flutter/material.dart';

class ScreenRow extends StatelessWidget {
  //text
  final String title1;
  final String title2;
  final String title3;

  //color
  final Color btnColor1;
  final Color btnColor2;
  final Color btnColor3;

  // // btn
  final Function() onpressedBtn1;
  final Function() onpressedBtn2;
  final Function() onpressedBtn3;

  ScreenRow({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.onpressedBtn1,
    required this.onpressedBtn2,
    required this.onpressedBtn3,
    this.btnColor1 = Colors.deepOrangeAccent,
    this.btnColor2 = Colors.orange,
    this.btnColor3 = Colors.deepOrange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScreenBtn(
          onpressedBtn: onpressedBtn1,
          btncolor: btnColor1,
          title: title1,
        ),
        SizedBox(
          width: 10,
        ),
        ScreenBtn(
          onpressedBtn: onpressedBtn2,
          btncolor: btnColor2,
          title: title2,
        ),
        SizedBox(
          width: 10,
        ),
        ScreenBtn(
          onpressedBtn: onpressedBtn3,
          btncolor: btnColor3,
          title: title3,
        ),
      ],
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////
// ignore: must_be_immutable
class ScreenBtn extends StatelessWidget {
  Color btncolor;
  String title;
  final Function() onpressedBtn;
  ScreenBtn(
      {required this.btncolor,
      required this.title,
      required this.onpressedBtn});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: onpressedBtn,
          style: ElevatedButton.styleFrom(
              primary: btncolor,
              onPrimary: Colors.white,
              elevation: 10,
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              padding: EdgeInsets.all(8),
              minimumSize: Size(100, 50)),
          child: Text(title)),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////

class ShowImage extends StatelessWidget {
  final String image;

  ShowImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          border: Border.all(color: Colors.orange, width: 5),
          borderRadius: BorderRadius.all(Radius.circular(15))),
    ));
  }
}

// ! Colors
///////////////////////////////////////////////////////////////////////////////
class ScreenRowColor extends StatelessWidget {
  //text

  //color
  final Color btnColor1;
  final Color btnColor2;

  //
  final Image image1;
  final Image image2;

  // // btn
  final Function() onpressedBtn1;
  final Function() onpressedBtn2;

  ScreenRowColor({
    required this.onpressedBtn1,
    required this.onpressedBtn2,
    required this.image1,
    required this.image2,
    this.btnColor1 = Colors.deepOrangeAccent,
    this.btnColor2 = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScreenBtnColors(
          onpressedBtn: onpressedBtn1,
          btncolor: btnColor1,
          image: image1,
        ),
        SizedBox(
          width: 10,
        ),
        ScreenBtnColors(
          onpressedBtn: onpressedBtn2,
          btncolor: btnColor2,
          image: image2,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

//////////////////////////////////////////////
// ignore: must_be_immutable
class ScreenBtnColors extends StatelessWidget {
  Color btncolor;

  Image image;
  final Function() onpressedBtn;
  ScreenBtnColors(
      {required this.btncolor,
      required this.image,
      required this.onpressedBtn});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onpressedBtn,
        style: ElevatedButton.styleFrom(
            primary: btncolor,
            onPrimary: Colors.white,
            elevation: 10,
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            padding: EdgeInsets.all(8),
            minimumSize: Size(100, 100)),
        child: image,
        //child: Text(title)
      ),
    );
  }
}
