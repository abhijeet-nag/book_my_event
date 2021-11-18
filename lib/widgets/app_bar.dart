import 'package:book_my_event/models/colors.dart';
import 'package:flutter/material.dart';

AppBar appBar(String text) {
  return AppBar(
    title: Text(text),
    backgroundColor: backgroundColor,
    elevation: 0,
  );
}
