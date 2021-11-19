import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class otp_text_field {
  String? pin;

  OTPTextField otpTextField(context) {
    return OTPTextField(
      length: 6,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 50,
      style: const TextStyle(fontSize: 17),
      textFieldAlignment: MainAxisAlignment.spaceEvenly,
      fieldStyle: FieldStyle.box,
      onCompleted: (pin) {
        this.pin = pin;
        Get.snackbar("PIN", pin);
      },
    );
  }
}
