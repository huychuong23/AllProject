// ignore_for_file: prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/screens/home/components/categories.dart';
import 'package:drink_order_ui/screens/home/components/custom_app_bar.dart';
import 'package:drink_order_ui/screens/home/components/custom_bottom_navigation_bar.dart';
import 'package:drink_order_ui/screens/home/components/drinks_product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: grey_dark,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomAppBar(),
            Category(),
            DrinkProducts(),
            CustomNavigatorBar()
          ]),
    );
  }
}
