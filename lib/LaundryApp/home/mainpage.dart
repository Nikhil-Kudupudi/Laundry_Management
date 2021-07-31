
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:we_wash/LaundryApp/cart/bookings.dart';
import 'package:we_wash/LaundryApp/details/userprofile.dart';
import 'package:we_wash/LaundryApp/home/entrypage.dart';
class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}
class _mainpageState extends State<mainpage> {
  int currentIndex=0;
  final List<Widget> _children=[
    entrypage(),
    bookingspage(),
    userprofile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.red.shade300,),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.reorder, color: Colors.red.shade300,),
              label:"Bookings"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.red.shade300,),
            label: "Profile",
          ),
        ],
        backgroundColor: Colors.grey.shade300,
      ),
      //backgroundColor: Colors.white,
      body: _children[currentIndex],
    );
  }
  void onTabTapped(int index){
    setState(() {
      currentIndex=index;
    });
  }
}