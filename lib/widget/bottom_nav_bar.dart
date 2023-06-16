import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youga_application/screen/contact.dart';
import 'package:youga_application/screen/home_activity.dart';
import 'package:youga_application/screen/profile.dart';
import 'package:youga_application/screen/youga_class.dart';

class BottomNav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomNavState();
  }
  
}
class BottomNavState extends State<BottomNav>{
  int index= 0;
  final pages =[
    HomeActivity(),
    Youga(),
    Contact(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.blue),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        elevation: 5,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud,),label: 'class'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts,),label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),
        ],
        onTap: (value){
          setState(() {
            index = value;
          });
        },
      ),
      body: pages[index],

    ));
  }
  
}