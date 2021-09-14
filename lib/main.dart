import 'package:flutter/material.dart';
import 'package:flutter_catelog/screens/home_screen.dart';
import 'package:flutter_catelog/screens/login_screen.dart';
import 'package:flutter_catelog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

//Entry point is Main function

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //WHat is context : Which thing is located where (like HomePage, MaterialApp)

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

    //Calling a method
    // bringVegetables(isCarryBag : true , rupees: 100);

    return MaterialApp(
      // home: HomePage(), // commented because given in routes
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // primaryColor: Colors.red
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
          // primarySwatch: Colors.deepOrange
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => HomePage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      } // initial route, onUnknownRoute, onGenerateRoute, onGenerateInitialRoute
    );
  }

  // bringVegetables({required bool isCarryBag, int rupees = 100}) { // Curly braces around param to give a default value.
  //
  // }

}