import 'dart:math';

import 'package:flutter/material.dart';
/*
import 'package:flutter_flutterando_2022/home_controller.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    final size = MediaQuery.of(context).size;
    final navigation = Navigator.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Flutter Cantuario2'),
      ),
      body: Center(
        child: Text('Cantuario2 bonitão ${controller.value} vezes.'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
 */

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    final names = ['Antonio', 'Luiz', 'Cantuario', 'Junior'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Flutter Cantuario2'),
      ),
      body: Center(
        //child: Text('Cantuario2 bonitão $counter vezes.'),
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return ListTile(
              title: Text('$name bonitão $counter vezes.'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
