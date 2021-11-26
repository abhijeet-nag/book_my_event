import 'package:auto_size_text/auto_size_text.dart';
import 'package:book_my_event/models/colors.dart';
import 'package:book_my_event/screens/organizer/otp_check_org.dart';
import 'package:book_my_event/screens/organizer/signup_screen_org.dart';
import 'package:book_my_event/widgets/app_bar.dart';
import 'package:book_my_event/widgets/button_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreenOrg extends StatefulWidget {
  const LoginScreenOrg({Key? key}) : super(key: key);

  @override
  _LoginScreenOrgState createState() => _LoginScreenOrgState();
}

class _LoginScreenOrgState extends State<LoginScreenOrg> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar("Login as an Organizer"),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 18, bottom: 28),
                child: AutoSizeText(
                  "Enter Your Phone Number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InternationalPhoneNumberInput(
                  cursorColor: Colors.black,
                  countrySelectorScrollControlled: true,
                  onInputChanged: (PhoneNumber number) {
                    setState(() {
                      phoneNumber = number.phoneNumber;
                    });
                  },
                  selectorConfig: const SelectorConfig(
                    showFlags: true,
                    setSelectorButtonAsPrefixIcon: true,
                    useEmoji: true,
                    leadingPadding: 10,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  textStyle: const TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  inputBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const OtpCheckOrg());
                  },
                  style: buttonStyle(),
                  child: const Text('SEND OTP'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Get.off(
                            const SignUpScreenOrg(),
                          );
                        },
                        child: Text(
                          "SIGNUP",
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
