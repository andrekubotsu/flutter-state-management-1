import 'package:flutter/cupertino.dart';

// feito em aula por Gabul
class HomeCountController {
  ValueNotifier<int> count1 = ValueNotifier<int>(0);
  ValueNotifier<int> count2 = ValueNotifier<int>(0);

  void increment1() {
    count1.value += 1;
  }

  void increment2() {
    count2.value += 1;
  }
}
