import 'package:gerencia_estado/controller.dart';
import 'package:gerencia_estado/shared/models/product_model.dart';

class CartController extends Controller<List<ProductModel>> {
  CartController() : super([]);

  void addItem(ProductModel product) {
    final list = state;
    list.add(product);
    update(list);
  }
}
