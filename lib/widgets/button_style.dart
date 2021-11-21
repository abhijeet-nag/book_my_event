import 'package:book_my_event/models/colors.dart';
import 'package:flutter/material.dart';

ButtonStyle buttonStyle() {
  return ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: backgroundColor,
          width: 2.0,
        ),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
    ),
    elevation: MaterialStateProperty.all(4),
    shadowColor: MaterialStateProperty.all(backgroundColor),
  );
}
