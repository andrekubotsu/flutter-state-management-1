import 'package:gerencia_estado/controller.dart';

// feito em aula por Gabul
class HomeCountController extends Controller<int> {
  HomeCountController() : super(0);

  void increment() {
    update(state + 1);
  }
}
