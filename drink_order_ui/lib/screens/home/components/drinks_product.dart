// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/data/data.dart';
import 'package:drink_order_ui/models/drink.dart';
import 'package:drink_order_ui/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class DrinkProducts extends StatelessWidget {
  const DrinkProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      child: ListView.builder(
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return _buildDrinkProduct(context, index);
          }),
    );
  }

  Widget _buildDrinkProduct(BuildContext context, int index) {
    Drink drink = drinks[index];
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => DetailScreen(drink: drink))),
      child: Padding(
        padding: EdgeInsets.only(
            left: appPadding, right: appPadding, bottom: appPadding / 2),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image(
              image: AssetImage(drink.imageUrl),
              width: size.width * 0.85,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.15,
                  height: size.height * 0.075,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: grey_dark),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        drink.discount.toString() + "%",
                        style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(
                          color: white.withOpacity(.4),
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drink.name,
                      style: TextStyle(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                    Text(
                      drink.category,
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.0),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
