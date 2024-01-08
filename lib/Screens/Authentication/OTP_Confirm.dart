import 'package:flutter/material.dart';
import 'package:sendin_mobile/Shared/Widgets/Pinput.dart';

class OTPConfirm extends StatefulWidget {
  const OTPConfirm({super.key});

  @override
  State<OTPConfirm> createState() => _OTPConfirmState();
}

class _OTPConfirmState extends State<OTPConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              buildPinPut(),
            ],
          ),
        )
      ),
    );
  }
}