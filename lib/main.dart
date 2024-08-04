import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hacroject/views/home%20page/home.dart';
import 'package:hacroject/views/home%20page/homeView.dart';
import 'package:hacroject/views/login%20page/login.dart';
import 'package:hacroject/views/menu/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
