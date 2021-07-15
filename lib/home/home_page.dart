import 'package:flutter/material.dart';
import 'package:gerencia_estado/home/home_count_controller.dart';
import 'package:gerencia_estado/stateBuilder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeCountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Managed Counter"),
      ),
      body: StateBuilder<Ob>(
        controller: controller,
        builder: (_, state) {
          if (state.name.isNotEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Name: ${state.name}\nNumber: ${state.number}",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                )
              ],
            );
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.setName("Andre");
          controller.setNumber(20);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
