import 'package:book_my_event/screens/choose_screen.dart';
import 'package:book_my_event/screens/user/home_screen.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      title: const Text(
        "Book My Event",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      photoSize: 40,
      image: Image.asset(
        "assets/images/ilogo.png",
      ),
      navigateAfterSeconds: const ChooseScreen(),
      useLoader: false,
    );
  }
}
