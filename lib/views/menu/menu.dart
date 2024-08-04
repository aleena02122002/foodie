import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/views/food/food.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: colorGradient.colorsScaffold,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: Icon(Icons.arrow_back_ios),
          actions: [Icon(Icons.favorite)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child:
                      Image(image: AssetImage("assets/images/image 18.png"))),
              Positioned(
                top: 20,
                child: Container(
                  width: 353,
                  height: 154,
                  decoration: BoxDecoration(
                      color: purple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Image(
                                image:
                                    AssetImage("assets/images/Frame 22.png")),
                          ),
                          SizedBox(width: 3),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _text("Kinka Izakaya", whites),
                              Row(
                                children: [
                                  _text(
                                      "2972 Westheimer Rd. Santa Ana", whites),
                                  SizedBox(width: 10),
                                  Icon(Icons.arrow_forward_ios, color: whites),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              _text("Delivery fee", whites),
                              _text("Rs 300", whites),
                            ],
                          ),
                          Column(
                            children: [
                              _text("Delivery fee", whites),
                              _text("Rs 300", whites),
                            ],
                          ),
                          Column(
                            children: [
                              _text("Delivery fee", whites),
                              _text("Rs 300", whites),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 197,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: navyBlue.withOpacity(0.5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width: 90,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: litepurple.withOpacity(0.5),
                                ),
                                child: Center(child: _text("Delivery", whites)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                child: Center(child: _text("Take Out", whites)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 140,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: navyBlue.withOpacity(0.5),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.person_add_alt, color: whites),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Center(child: _text("Group Order", whites)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.search,
                      color: whites,
                    ),
                    _text("Featured items", whites),
                    _text("Appetizers", whites),
                    _text("Sushi", Colors.white)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  color: whites,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: _text("Featured items", whites),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(FoodView());
                        },
                        child: Image(
                            image: AssetImage("assets/images/Item 1.png"))),
                    SizedBox(height: 20),
                    Image(image: AssetImage("assets/images/Item 1.png")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _text(String text, Color colors) {
    return Text(
      text,
      style: TextStyle(color: colors),
    );
  }
}
