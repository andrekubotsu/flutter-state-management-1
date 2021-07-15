import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_estado/counter/count_controller.dart';

void main() {
  late CountController controller;
  setUp(() {
    controller = CountController();
  });
  test('validate increment count', () {
    var value = controller.increment();
    expect(value, 1);
  });

  test('validate decrement count', () {
    var value = controller.decrement();
    expect(value, 1);
  });
}
