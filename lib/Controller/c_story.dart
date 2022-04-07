import 'dart:collection';
import 'package:kids_learning/Model/m_learn.dart';

import 'package:kids_learning/views/storys_screen.dart';

class ControllerStory {
  static List<ModellStory> _datastory = [
    ModellStory(
      title: 'الإسراء و المعراج',
      page: Story1(),
    ),
    ModellStory(
      title: 'مولد الحبيب',
      page: Story2(),
    ),
    ModellStory(
      title: 'أركان الاسلام',
      page: Story3(),
    ),
    ModellStory(
      title: 'قصة مفتاح التفوق',
      page: Story4(),
    ),
    ModellStory(
      title: 'نشيد محمد نبينا',
      page: Story5(),
    ),
    ModellStory(
      title: 'قصة الأذان',
      page: Story6(),
    ),
    ModellStory(
      title: 'قصة النحلة و الفراشة',
      page: Story7(),
    ),
  ];

  static UnmodifiableListView<ModellStory> get datastory =>
      UnmodifiableListView(_datastory);

  static int get dataLength => _datastory.length;
}
