
import 'package:flutter/material.dart';
import 'package:hacroject/components/bottomNavigation.dart';
import 'package:hacroject/views/home%20page/homeView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar:MyNavigationBar(),
      body: Homeview(),
    );
  }
}
