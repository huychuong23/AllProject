import 'package:e_commerce_app/screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "lib/screens/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}
