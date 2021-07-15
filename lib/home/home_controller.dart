import 'package:gerencia_estado/controller.dart';

enum HomeStatus { empty, error, loading, sucess }

// abstract class HomeStatusClass {}

// class HomeStatusClassLoading extends HomeStatusClass{}
// class HomeStatusClassSuccess extends HomeStatusClass{}
// class HomeStatusClassError extends HomeStatusClass{}
// class HomeStatusClassEmpty extends HomeStatusClass{}

class HomeController extends Controller<HomeStatus> {
  HomeController() : super(HomeStatus.empty);

  Future<void> login() async {
    update(HomeStatus.loading);
    await Future.delayed(Duration(seconds: 3));
    update(HomeStatus.sucess);
  }
}
