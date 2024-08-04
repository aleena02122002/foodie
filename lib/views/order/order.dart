import 'package:flutter/material.dart';
import 'package:hacroject/components/colors.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: colorGradient.colorsScaffold),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: whites,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: _text("Order Details", whites, 25),
            ),
            Row(
              children: [
               Image(image: AssetImage("assets/images/product2.png")),


              ],
            )
          ],
        ),
      ),
    );
  }



  _text(String text, Color colors, double size) {
    return Text(
      text,
      style: TextStyle(color: colors, fontSize: size),
    );
  }
}
