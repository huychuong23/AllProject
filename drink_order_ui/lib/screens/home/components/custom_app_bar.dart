// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/constants/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Container(
        height: size.height * 0.2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Tonight",
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2.0),
                ),
                Text(
                  "Monday, November 25",
                  style: TextStyle(
                      color: white.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2.0),
                )
              ],
            ),
            Container(
              width: size.width * 0.2,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: grey_medium,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: appPadding / 3),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        //Một widget áp dụng một phép biến đổi trước khi vẽ con của nó
                        Transform(
                          child: Icon(
                            CustomIcons.bar_service,
                            color: white,
                            size: 40,
                          ),
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                        ),
                        Container(
                          height: size.height * 0.02,
                          width: size.width * 0.04,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: grey_dark.withOpacity(0.8)),
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(color: white),
                          )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Text(
                          "32",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Text(
                      "Total Price",
                      style: TextStyle(
                          color: white.withOpacity(0.4), fontSize: 12),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
