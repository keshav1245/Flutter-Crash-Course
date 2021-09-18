import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {

  static ThemeData lightTheme(BuildContext context) => ThemeData(
  // primaryColor: Colors.red
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: cream,
      buttonColor: darkBluish,
      accentColor: darkBluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme)
  );


  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
          // color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(
            headline6: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white)
          )
      ),
      brightness: Brightness.dark
    // primarySwatch: Colors.deepOrange
  );


  //Colors
  static Color cream = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluish = Color(0xff403b58);
  static Color lightBluish = Vx.indigo500;


}