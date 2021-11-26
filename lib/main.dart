import 'package:book_my_event/screens/splash.dart';
import 'package:book_my_event/screens/user/event_details.dart';
import 'package:book_my_event/screens/user/home_screen.dart';
import 'package:book_my_event/widgets/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book My Event',
      theme: colorTheme(),
      // home: const Splash(),
      // home: const HomeScreen(),
      home: const EventDetails(),
    );
  }
}
