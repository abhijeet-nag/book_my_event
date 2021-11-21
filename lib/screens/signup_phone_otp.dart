import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_my_event/models/colors.dart';
import 'package:book_my_event/screens/signup_email_otp.dart';
import 'package:book_my_event/widgets/app_bar.dart';
import 'package:book_my_event/widgets/button_style.dart';
import 'package:book_my_event/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPhoneOtp extends StatefulWidget {
  const SignupPhoneOtp({Key? key}) : super(key: key);

  @override
  _SignupPhoneOtpState createState() => _SignupPhoneOtpState();
}

class _SignupPhoneOtpState extends State<SignupPhoneOtp> {
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
                  "Enter Phone Verification Code",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18, bottom: 28),
                child: AutoSizeText(
                  "We have send a code verification to your mobile number.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              otp.otpTextField(context),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(const SignupEmailOtp());
                  },
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
                            "OTP RESEND",
                            "We'll Resend You OTP, Please Check Your Phone",
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
