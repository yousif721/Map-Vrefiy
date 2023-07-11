import 'package:flutter/material.dart';
import '../widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
   const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: LoginScreenBody()
    );
  }


}
