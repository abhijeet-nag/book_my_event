import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData colorTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
      headline1: TextStyle(),
    ).apply(
      bodyColor: Colors.black,
      fontFamily: GoogleFonts.lato().fontFamily,
    ),
  );
}

ThemeData whiteBackgroundTheme() {
  return ThemeData(
    canvasColor: Colors.white,
    primarySwatch: Colors.blue,
  );
}
