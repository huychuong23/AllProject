// ignore_for_file: prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/data/data.dart';
import 'package:drink_order_ui/models/drink.dart';
import 'package:drink_order_ui/screens/detail/components/background.dart';
import 'package:drink_order_ui/screens/detail/components/drink_detail.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.drink}) : super(key: key);
  final Drink drink;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BackGround(drinkImageUrl: "assets/images/drink3.jpg"),
            BackGround(drinkImageUrl: "assets/images/drink1.jpg"),
            BackGround(drinkImageUrl: "assets/images/drink2.jpg"),
            BackGround(drinkImageUrl: "assets/images/drink4.jpg"),
          ],
        ),
      ),
    );
  }
}
