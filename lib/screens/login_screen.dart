import 'package:book_my_event/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar("Login as a User"),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InternationalPhoneNumberInput(
                  cursorColor: Colors.white,
                  countrySelectorScrollControlled: true,
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  selectorConfig: const SelectorConfig(
                    showFlags: true,
                    setSelectorButtonAsPrefixIcon: true,
                    useEmoji: true,
                    leadingPadding: 10,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.white),
                  textStyle: const TextStyle(color: Colors.white),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     formKey.currentState!.validate();
              //   },
              //   child: Text('Validate'),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     getPhoneNumber("$number");
              //   },
              //   child: Text('Update'),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     formKey.currentState!.save();
              //   },
              //   child: Text('Save'),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // void getPhoneNumber(String phoneNumber) async {
  //   PhoneNumber number =
  //       await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
  //
  //   setState(() {
  //     this.number = number;
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }
}
