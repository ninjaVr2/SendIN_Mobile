import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';



Widget buildPinPut() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Pinput(
      length: 6,
      listenForMultipleSmsOnAndroid: true,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      onCompleted: (pin) => print(pin),
    ),
  );
}