import 'package:flutter/material.dart';

const primaryColor = Color(0xffAAC8A7);

const double kSectionSpacingSm = 12.0;
const double kSectionSpacingMd = 16.0;
const double kSectionSpacingLg = 24.0;

const double kScreenPadding = 16.0;
const double kScreenPaddingLg = 24.0;

class AppTheme {
  AppTheme._();

  //static const _primaryColorLight = Color.fromARGB(255, 110, 65, 118);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    primaryColor: primaryColor, //defines one color
    //primarySwatch: Colors.pink,
    secondaryHeaderColor: const Color(
        0xffC3EDC0), //takes a material color and automaticall generates diff shade of that color
    //colorSchemeSeed: const Color(0xffAE445A),
    //scaffoldBackgroundColor: const Color(0xffF39F5A),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xffC08261),
        ), // Set the color here
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
      shadowColor: Colors.black,
      scrolledUnderElevation: 1,
      shape: ContinuousRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}

/*AAC8A7*/
