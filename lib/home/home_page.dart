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
      body: StateBuilder<int>(
        controller: controller,
        builder: (_, state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Count: ${controller.state}",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
