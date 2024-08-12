import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/views/order/order.dart';

class FoodView extends StatefulWidget {
  const FoodView({super.key});

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  bool? isChacked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: colorGradient.colorsScaffold),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
            onPressed: () { Get.back();},
            icon: Icon(
              Icons.arrow_back_ios,
              color: whites,
            ),
          ),
          actions: [
            Icon(
              Icons.favorite,
              color: whites,
            ),
            Icon(
              Icons.menu,
              color: whites,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Image(image: AssetImage("assets/images/speg.png")),
              Container(
                width: 353,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: litepurple.withOpacity(0.2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _text("Udon Miso", whites, 20.5),
                    const SizedBox(height: 5),
                    _text("Rs 400", whites, 20.5),
                    const SizedBox(height: 5),
                    _text(
                        "Our Udon Miso is a comforting bowl of \nthick, handmade udon noodles in a rich\nmiso broth, garnished with tofu, spring \nonions, and vegetables.",
                        whites.withOpacity(0.5),
                        16.5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 15.0),
                      child: Container(
                        width: 105,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: navyBlue.withOpacity(0.6)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: whites,
                                )),
                            _text("1", whites, 15.0),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: whites,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: whites.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text("Noodles Type", whites, 18.0),
                        _text("Requires", whites.withOpacity(0.4), 15.0)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text("Thin", whites, 16.0),
                        Checkbox(
                            value: isChacked,
                            onChanged: (newValue) {
                              setState(() {
                                isChacked = newValue;
                              });
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: 9.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text("Thick", whites, 16.0),
                        Checkbox(
                            value: isChacked,
                            onChanged: (newValue) {
                              setState(() {
                                isChacked = newValue;
                              });
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: 9.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text("Udon", whites, 16.0),
                        Checkbox(
                            value: isChacked,
                            onChanged: (newValue) {
                              setState(() {
                                isChacked = newValue;
                              });
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: 9.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text("Thin", whites, 16.0),
                        Checkbox(
                            value: isChacked,
                            tristate: true,
                            onChanged: (newValue) {
                              setState(() {
                                isChacked = newValue;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: 353,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OrderView());
                    },
                    child: _text("Add to cart", whites, 15),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: litepurple,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _text(String text, Color colors, double size) {
    return Text(
      text,
      style: TextStyle(color: colors, fontSize: size,fontFamily: "SF"),
    );
  }
}
