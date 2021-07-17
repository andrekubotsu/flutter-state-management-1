import 'package:gerencia_estado/controller.dart';
import 'package:gerencia_estado/shared/models/product_model.dart';

class HomeController extends Controller<List<ProductModel>> {
  HomeController() : super([]); // iniciliza vazio, populado por API, dados etc

  Future<void> getProducts() async {
    await Future.delayed(Duration(seconds: 2)); // simula chamada na API
    update(List.generate(
        50, (index) => ProductModel(name: "Produto $index", price: index + 1)));
  }
}
