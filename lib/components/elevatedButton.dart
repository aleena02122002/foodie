import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/views/home%20page/home.dart';

class Elevatedbutton extends StatelessWidget {
  final String text;
  const Elevatedbutton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 254,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: buttons.colorsbuttons,
      ),
      child: ElevatedButton(
        onPressed: () {
          Get.to(const HomePage());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child:  Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
    );
  }
}
