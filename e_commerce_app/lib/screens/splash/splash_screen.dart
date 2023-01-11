// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/screens/splash/components/body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
