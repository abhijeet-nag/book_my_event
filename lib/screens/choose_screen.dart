import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_my_event/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 68.0),
              child: Text(
                "Choose Your Interest",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const LoginScreen());
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 4.0,
                                spreadRadius: 2.0,
                                offset: Offset(
                                    2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset("assets/images/user.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "I am a User",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 4.0,
                                spreadRadius: 2.0,
                                offset: Offset(
                                    2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset("assets/images/planner.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 120,
                          child: AutoSizeText(
                            "I am a Event Organizer",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
