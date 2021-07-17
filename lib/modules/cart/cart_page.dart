import 'package:flutter/material.dart';
import 'package:gerencia_estado/modules/cart/cart_controller.dart';
import 'package:gerencia_estado/shared/models/product_model.dart';

import '../../stateBuilder.dart';

class CartPage extends StatefulWidget {
  final CartController controller;
  CartPage({Key? key, required this.controller}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StateBuilder<List<ProductModel>>(
        controller: widget.controller,
        builder: (_, state) {
          if (state.isEmpty) {
            return Center(
              child: Text("Ops, seu carrinho está vazio!"),
            );
          } else {
            return ListView.builder(
                itemCount: widget.controller.state.length,
                itemBuilder: (_, index) => ListTile(
                      title: Text(state[index].name),
                      trailing: Text(state[index].price.toString()),
                    ));
          }
        },
      ),
    );
  }
}
