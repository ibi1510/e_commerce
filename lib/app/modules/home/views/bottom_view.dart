import 'package:e_commerce/app/modules/home/views/card.dart';
import 'package:e_commerce/app/modules/home/views/home.dart';
import 'package:e_commerce/app/modules/home/views/nikee.dart';
import 'package:e_commerce/app/modules/home/views/payment.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex = 0;
  List pages = [Home(), Nike(), Cardd(), Payment()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.red,
        showUnselectedLabels: false,
        // showSelectedLabels: false,
        unselectedItemColor: Color(0xff3b5062),
        // selectedItemColor: Colors.lightBlue,
        // unselectedItemColor: Colors.black,
        // selectedFontSize: 20,
        // unselectedFontSize: 20,
        // selectedLabelStyle: TextStyle(color: Colors.black45),
        unselectedLabelStyle: TextStyle(fontSize: 13),
        // iconSize: 40,
        // selectedIconTheme: IconThemeData(size: 30,color: Colors.indigo),
        // unselectedIconTheme: IconThemeData(size: 30,color: Colors.green),
        selectedItemColor: Colors.lightBlueAccent,
        selectedIconTheme: IconThemeData(color: Colors.lightBlueAccent),
        unselectedIconTheme: IconThemeData(color: Color(0xff3b5062)),
        currentIndex: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xffffffff),
            label: "Home",
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_outlined), label: "heart"),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_2_outlined,
              ),
              label: "card"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Order")
        ],
      ),
    );
  }
}
