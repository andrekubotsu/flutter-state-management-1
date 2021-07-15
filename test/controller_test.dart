import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_estado/controller.dart';

enum Status { empty, error, loading, success }
void main() {
  late Controller<Status> controller;
  setUp(() {
    controller = Controller<Status>(Status.empty);
  });

  test('validate initial controller state', () {
    var isClicked = false;
    controller.listen((_) => isClicked = true);
    controller.update(Status.loading);
    expect(isClicked, isTrue);
  });
}
