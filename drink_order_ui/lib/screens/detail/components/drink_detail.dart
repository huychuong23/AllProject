// ignore_for_file: prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/models/drink.dart';
import 'package:drink_order_ui/screens/detail/components/curve_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrinksDetail extends StatefulWidget {
  const DrinksDetail({Key? key, required this.drinks}) : super(key: key);
  final Drink drinks;
  @override
  State<DrinksDetail> createState() => _DrinksDetailState();
}

class _DrinksDetailState extends State<DrinksDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
        ),
        ClipPath(
          clipper: CurveClipper(),
          child: Container(
            height: size.height * 0.4,
            width: size.width,
            decoration: BoxDecoration(
              color: grey_dark,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: [
                Text(
                  widget.drinks.name,
                  style: TextStyle(
                      color: white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  widget.drinks.category,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    Container(
                      width: size.width * 0.15,
                      height: size.height * 0.065,
                      decoration: BoxDecoration(
                          border: Border.all(color: white.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(20.0)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
