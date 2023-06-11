import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youga_application/screen/home_activity.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}