import 'package:book_my_event/models/colors.dart';
import 'package:book_my_event/screens/signup_phone_otp.dart';
import 'package:book_my_event/widgets/app_bar.dart';
import 'package:book_my_event/widgets/button_style.dart';
import 'package:book_my_event/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<String> items = <String>['Male', 'Female', 'Other'];
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: appBar("SignUp as a User"),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: textFormField("Enter Your Name"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    // horizontal: 12,
                  ),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    hint: const Text(
                      "Choose Your Gender",
                      style: TextStyle(color: Colors.black),
                    ),
                    value: dropdownValue,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(23),
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: textFormField("Enter Your Organization Email"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: textFormField("Enter Your Phone Number"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(const SignupPhoneOtp());
                      },
                      style: buttonStyle(),
                      child: const Text('Create Account'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0, bottom: 50),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        GestureDetector(
                          onTap: () {
                            Get.off(
                              const LoginScreen(),
                            );
                          },
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
