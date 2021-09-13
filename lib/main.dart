import 'package:flutter/material.dart';

//Entry point is Main function

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Material(
        child : Center(
          child: Container(
            child: Text("Welcome to 30 days of Flutter")
          )
        )
      )
    );
  }

}