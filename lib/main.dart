import 'package:flutter/material.dart';
import 'package:flutter_catelog/home_page.dart';

//Entry point is Main function

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Different Data Types
    // int days = 30;
    // String name = "Keshav";
    // double pi = 3.14;
    // bool isMale = true;
    // bool isFemale = false;
    // num val = 3.4553; // can be both int and float
    // var day = "Monday"; // can take any value
    // var price = 1003;
    // const e = 2.713; // constant

    return MaterialApp(
      home: HomePage()
    );
  }

}