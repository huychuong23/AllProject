// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class titlePlant extends StatelessWidget {
  const titlePlant({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
              text: TextSpan(
            children: [
              TextSpan(
                text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              TextSpan(
                  text: country,
                  style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300)),
            ],
          )),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
