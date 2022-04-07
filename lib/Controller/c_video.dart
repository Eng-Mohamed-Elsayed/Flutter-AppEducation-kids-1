import 'package:kids_learning/Model/m_learn.dart';

class ControllerVideo {
  static List<ModellPages> _dataVideo = [
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/MGyFM2ddbp4/mqdefault.jpg',
        title: 'Learn Colors with Cars in English for Kids',
        pageUrl: 'https://youtu.be/MGyFM2ddbp4'),
    ModellPages(
        imageUrl:
            'https://i.pinimg.com/originals/b9/67/f9/b967f9307b067de92fb6e2dcce493b82.jpg',
        title: 'Bob Alphabet Adventure',
        pageUrl: 'https://youtu.be/f0tzdwbN4bo'),
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/5j_UCxIEgj4/maxresdefault.jpg',
        title: 'أنشودة الحروف - الف ارنب يجري يلعب ',
        pageUrl: 'https://youtu.be/5j_UCxIEgj4'),
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/IDO4kmZdfh0/maxresdefault.jpg',
        title: 'أسماء وأصوات الحيوانات للاطفال تعليم  ',
        pageUrl: 'https://youtu.be/05myt3iAFKo'),
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/UVtgtAMac-s/maxresdefault.jpg',
        title: 'كليب الألوان',
        pageUrl: 'https://youtu.be/1oxJUjV7DfM'),
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/o43ZteVMQHQ/maxresdefault.jpg',
        title: 'كليب الأرقام',
        pageUrl: 'https://youtu.be/o43ZteVMQHQ'),
    ModellPages(
        imageUrl: 'https://i.ytimg.com/vi/D0Ajq682yrA/maxresdefault.jpg',
        title: 'Number song 1-20 for children | Counting numbers',
        pageUrl: 'https://youtu.be/D0Ajq682yrA'),
  ];
  static List<ModellPages> get dataVideo => _dataVideo;
  static int get dataLength => _dataVideo.length;
}
