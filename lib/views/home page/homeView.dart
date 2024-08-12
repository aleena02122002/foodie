import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/components/searchTextFeild.dart';
import 'package:hacroject/views/menu/menu.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final searchController = TextEditingController();
  final FocusNode _focusNode1 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: double.infinity,
            decoration: BoxDecoration(gradient: colorGradient.colorsScaffold),
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              // bottomNavigationBar: MyNavigationBar(),
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,

              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchFeild(
                        hintText: "Your Order?",
                        controller: searchController,
                        prefixIcon: Icons.search,
                        focusNode: _focusNode1),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _text("Categories", whites),
                          _text("See All", whites),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: whites.withOpacity(0.3))),
                                child: const Image(
                                    image:
                                        AssetImage("assets/images/burger 1.png")),
                              ),
                              _text("Burgers", whites),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: whites.withOpacity(0.3))),
                                child: const Image(
                                    image:
                                        AssetImage("assets/images/cake 1.png")),
                              ),
                              _text("Dessert", whites),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: whites.withOpacity(0.3))),
                                child: const Image(
                                    image:
                                        AssetImage("assets/images/taco 1.png")),
                              ),
                              _text("Mexcian", whites),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: whites.withOpacity(0.3))),
                                child: const Image(
                                    image: AssetImage("assets/images/sushi.png")),
                              ),
                              _text("Sushi", whites),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: navyBlue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 320,
                              height: 193,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Text(
                                      '30% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 80,
                                    left: 20,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Discover discounts in your',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100
                                          ),
                                        ),
                                        Text(
                                          'favourite local restaurants',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    bottom: 10,
                                    child: Image.asset(
                                      'assets/images/pasta.png',
                                      width: 150,
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                
                                  Positioned(
                                    bottom: 10,
                                    left: 16,
                                    child: ElevatedButton(
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 2, 83, 222)
                                      ),
                                      child: const Text('Order Now', style: TextStyle(color: Colors.white ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: navyBlue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 320,
                              height: 193,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Text(
                                      '30% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 80,
                                    left: 20,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Discover discounts in your',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100
                                          ),
                                        ),
                                        Text(
                                          'favourite local restaurants',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    bottom: 10,
                                    child: Image.asset(
                                      'assets/images/pasta.png',
                                      width: 150,
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 16,
                                    child: ElevatedButton(
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 2, 83, 222)
                                      ),
                                      child: const Text('Order Now', style: TextStyle(color: Colors.white ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_container(), _container(),_container(),_container()],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: _text("Fastest near you", whites),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        GestureDetector(onTap: (){ Get.to(const MenuView());},child: const Image(image: AssetImage("assets/images/Card.png"))),
                        const SizedBox(height: 20),
                        GestureDetector(onTap: (){},child: const Image(image: AssetImage("assets/images/Card.png"))),
                      ],),
                    )
                    
                  ],
                ),
              ),
            )));
  }

  _text(String text, Color colors) {
    return Text(
      text,
      style: TextStyle(color: colors),
    );
  }

  _container() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: whites,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
