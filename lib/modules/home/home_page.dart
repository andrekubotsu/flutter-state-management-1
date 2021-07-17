import 'package:flutter/material.dart';
import 'package:gerencia_estado/modules/cart/cart_controller.dart';
import 'package:gerencia_estado/modules/cart/cart_page.dart';
import 'package:gerencia_estado/modules/home/home_controller.dart';
import 'package:gerencia_estado/shared/models/product_model.dart';
import 'package:gerencia_estado/stateBuilder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final cartController = CartController();

  @override
  void initState() {
    controller.getProducts(); // chamada de api
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => CartPage(
                            controller: cartController,
                          )));
            },
            icon: Stack(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
                StateBuilder<List<ProductModel>>(
                    builder: (_, state) => CircleAvatar(
                          radius: 8,
                          child: Text(
                            state.length.toString(),
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                    controller: cartController)
              ],
            ),
          ),
        ],
      ),
      body: StateBuilder<List<ProductModel>>(
        controller: controller,
        builder: (_, state) {
          if (state.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: controller.state.length,
                itemBuilder: (_, index) => ListTile(
                      title: Text(state[index].name),
                      trailing: Text(state[index].price.toString()),
                      onTap: () {
                        cartController.addItem(state[index]);
                      },
                    ));
          }
        },
      ),
    );
  }
}
