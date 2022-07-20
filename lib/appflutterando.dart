import 'package:flutter/material.dart';
import 'package:flutter_flutterando_2022/home.dart';
import 'package:flutter_flutterando_2022/home_controller.dart';

class AppFlutterando extends StatelessWidget {
  const AppFlutterando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(child: const HomeWidget()),
    );
  }
}
