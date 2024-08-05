import 'package:flutter/material.dart';
import 'package:hacroject/components/colors.dart';
import 'package:hacroject/views/browss/browse.dart';
import 'package:hacroject/views/carts/carts.dart';
import 'package:hacroject/views/home%20page/homeView.dart';
import 'package:hacroject/views/order/order.dart';


class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  final screens= [
    Homeview(),
    BrowseView(),
    CartView(),
    OrderView(),
    // AccountsView()


  ];
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.transparent,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(

          data: NavigationBarThemeData(

              labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: whites))
          ),
          child: NavigationBar(
            backgroundColor: Colors.transparent.withOpacity(0.2),
              height: 60,
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() => this.index = index),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.manage_search,color: Colors.white,),
                  label: 'Browse',
                ),
                NavigationDestination(
                  icon: Icon(Icons.house_outlined,color: Colors.white),
                  label: 'Setting',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_cart,color: Colors.white),
                  label: 'Carts',
                ),
                NavigationDestination(
                  icon: Icon(Icons.list_alt_outlined,color: Colors.white),
                  label: 'Orders',
                ),
              ]),
        ),
      ),
    );
  }
}
