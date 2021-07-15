import 'package:flutter_test/flutter_test.dart';
import 'package:gerencia_estado/home/home_controller.dart';

void main() {
  late HomeController controller;
  setUp(() {
    controller = HomeController();
  });

  test('validate login state', () async {
    final states = <HomeStatus>[];
    controller.listen((state) => states.add(state));
    await controller.login();
    expect(states, [HomeStatus.loading, HomeStatus.sucess]);
  });
}
