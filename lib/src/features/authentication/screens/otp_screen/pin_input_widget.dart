import 'package:flutter/material.dart';
import 'package:locatify/src/features/authentication/controllers/otp_controller.dart';
import 'package:pinput/pinput.dart';

class PinInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 23,
        color: Colors.lightBlue,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
          width: 2,
          color: Colors.grey),
      borderRadius: BorderRadius.circular(20),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      length: 6,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      enabled: true,
      cursor: Container(
        width: 2.5,
        height: 30,
        color: Colors.grey,
      ),
      onCompleted: (pin) {
        OtpVerificationController.instance.updateSmsCode(pin);
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,

    );
  }
}
