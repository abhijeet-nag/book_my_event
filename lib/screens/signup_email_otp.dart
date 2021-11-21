import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_my_event/models/colors.dart';
import 'package:book_my_event/widgets/app_bar.dart';
import 'package:book_my_event/widgets/button_style.dart';
import 'package:book_my_event/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupEmailOtp extends StatefulWidget {
  const SignupEmailOtp({Key? key}) : super(key: key);

  @override
  _SignupEmailOtpState createState() => _SignupEmailOtpState();
}

class _SignupEmailOtpState extends State<SignupEmailOtp> {
  final TextEditingController controller = TextEditingController();
  OtpTextField otp = OtpTextField();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar("Signup as a User"),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 18, bottom: 5),
                child: AutoSizeText(
                  "Enter Email Verification Code",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, bottom: 28),
                child: AutoSizeText(
                  "We have send a code verification to your Email Address.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              otp.otpTextField(context),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: const Text('SUBMIT'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn't receive any code? "),
                      GestureDetector(
                        onTap: () {
                          Get.snackbar(
                            "Button Works",
                            "RESEND button Works",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        },
                        child: Text(
                          "RESEND",
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
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
