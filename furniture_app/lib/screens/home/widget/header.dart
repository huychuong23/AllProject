// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:furniture_app/data/fake.dart';
import 'package:furniture_app/screens/home/widget/search_bar.dart';
import 'package:furniture_app/widgets/cart.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Furniture Shop",
                style: TextStyle(fontSize: 28.0),
              ),
              Cart(
                numberOfItemsInCart: Fake.numberOfItemsInCart,
              ),
            ],
          ),
          Text(
            "Get unique furniture for your home",
            style: TextStyle(fontSize: 15.0, color: Colors.black38),
          ),
          SearchBar()
        ],
      ),
    );
  }
}
