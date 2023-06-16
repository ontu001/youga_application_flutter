import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youga_application/screen/home_activity.dart';
import 'package:youga_application/widget/bottom_nav_bar.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
  
}

class SplashState extends State<Splash>{
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.man,color: Colors.black87,size: 44,),
              SizedBox(
                height: 15,
              ),
              Text('Youga Master',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black87),)
              
            ],
          ),
        ),
      ),
    );
  }
  
}