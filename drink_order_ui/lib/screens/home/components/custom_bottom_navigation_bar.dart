// ignore_for_file: prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/constants/custom_icons_icons.dart';
import 'package:drink_order_ui/screens/home/components/bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int bottomNavigationBarItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: black.withOpacity(0.5),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
      ),
      padding: EdgeInsets.only(
          left: appPadding, right: appPadding, bottom: appPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          BottomBar(
            text: 'Home',
            icons: CustomIcons.home,
            bottomIcons: bottomNavigationBarItemIndex == 0 ? true : false,
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 0;
              });
            },
          ),
          BottomBar(
            text: 'Menu',
            icons: CustomIcons.wine_menu,
            bottomIcons: bottomNavigationBarItemIndex == 1 ? true : false,
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 1;
              });
            },
          ),
          BottomBar(
            text: 'Search',
            icons: CustomIcons.search,
            bottomIcons: bottomNavigationBarItemIndex == 2 ? true : false,
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
