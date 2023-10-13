import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //static const _primaryColorLight = Color.fromARGB(255, 110, 65, 118);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffAAC8A7), //defines one color
    //primarySwatch: Colors.pink,
    secondaryHeaderColor: const Color(
        0xffC3EDC0), //takes a material color and automaticall generates diff shade of that color
    //colorSchemeSeed: const Color(0xffAE445A),
    //scaffoldBackgroundColor: const Color(0xffF39F5A),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xffC08261)), // Set the color here
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}

/*AAC8A7*/
