import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merhaba_flutter/views/history.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("TRACK YOUR WEIGHT")),
      body: HistoryScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: null,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height / 12,
        activeColor: Colors.white,
        inactiveColor: Colors.red,
        backgroundColor: Colors.black,
        gapLocation: GapLocation.center,
        icons: [Icons.show_chart, Icons.history],
        iconSize: 30,
        activeIndex: 0,
        onTap: (int) {
          print(int);
        },
      ),
    );
  }
}
