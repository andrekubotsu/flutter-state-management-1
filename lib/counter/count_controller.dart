import 'package:gerencia_estado/controller.dart';

class CountController extends Controller<int> {
  CountController() : super(0);

  int increment() {
    var result = this.state + 1;
    return result;
  }

  int decrement() {
    var result = this.state - 1;
    return result;
  }
}
