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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: controller.count1,
              builder: (_, __) {
                print("Chamou Count1");
                return Text(
                  "Count: ${controller.count1.value}",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                );
              },
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: controller.count2,
              builder: (_, __) {
                print("Chamou Count2");
                return Text(
                  "Count: ${controller.count2.value}",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: controller.increment1,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.increment2,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
