import 'package:flutter/material.dart';

Container container() {
  return Container(
    height: 70,
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(
            Icons.home,
            size: 40,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.calendar_today,
            size: 33,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.supervised_user_circle_rounded,
            size: 40,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.settings_sharp,
            size: 35,
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
