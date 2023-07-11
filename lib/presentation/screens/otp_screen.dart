import 'package:demo_maps/presentation/widgets/otp_screen_body.dart';
import 'package:flutter/material.dart';

  class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key, this.phoneNumber});

  final phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: OtpScreenBody(phoneNumber: phoneNumber)
    );
  }


}
