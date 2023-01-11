// ignore_for_file: prefer_const_constructors

import 'package:drink_order_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomBar extends StatefulWidget {
  const BottomBar(
      {Key? key,
      required this.onPressed,
      required this.bottomIcons,
      required this.text,
      required this.icons})
      : super(key: key);
  final VoidCallback onPressed;
  final bool bottomIcons;
  final String text;
  final IconData icons;
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressed,
        child: widget.bottomIcons == true
            ? Container(
                decoration: BoxDecoration(
                    color: grey_medium,
                    borderRadius: BorderRadius.circular(30.0)),
                padding: EdgeInsets.symmetric(
                    horizontal: appPadding / 2, vertical: appPadding / 4),
                child: Row(
                  children: [
                    Icon(
                      widget.icons,
                      size: 25,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                ),
              )
            : Icon(
                widget.icons,
                color: white.withOpacity(0.4),
                size: 25,
              ));
  }
}
