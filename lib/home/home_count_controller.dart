import 'package:gerencia_estado/controller.dart';

class Ob {
  String name;
  double number;

  Ob({
    this.name = "",
    this.number = 0.0,
  });
}

// feito em aula por Gabul
class HomeCountController extends Controller<Ob> {
  HomeCountController() : super(Ob());

  void setName(String name) {
    var actual = state;
    actual.name = name;
    update(actual);
  }

  void setNumber(double number) {
    var actual = state;
    actual.number = number;
    update(actual);
  }
}
