import 'package:flutter/material.dart';

Container borderContainer(Color color, String text) {
  return Container(
    height: 50,
    width: 150,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        text,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
