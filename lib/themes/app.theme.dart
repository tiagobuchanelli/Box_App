import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xff2196F3);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = Colors.white;

ThemeData AppTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    textTheme: new TextTheme(
      title: new TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      //subtitle: new TextStyle(color: Colors.red),
      //subhead: new TextStyle(color: Colors.red),
      //body1: new TextStyle(color: Colors.red),
      //body2: new TextStyle(color: Colors.red),
      display1: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 30,
          fontWeight: FontWeight.w300,
          fontFamily: "Poppins"),
      display2: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      display3: new TextStyle(
          color: Colors.black87.withOpacity(0.8),
          fontSize: 20,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
      display4: new TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
      //button: new TextStyle(color: Colors.green),
      //headline: new TextStyle(color: Colors.deepPurple)
    ),

    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        iconTheme:
            IconThemeData(color: Colors.black)), //Vai afetar todas as app bar
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    accentColor: Colors.blueAccent,
    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xFF00C569),
    scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
