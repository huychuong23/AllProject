// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/details/components/image__and_icons.dart';
import 'package:plant_app/details/components/title_plant_detail.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        ImageWeatherCondition(size: size),
        titlePlant(title: "Samantha", country: "Russia", price: 440),
        titlePlant(title: "Angelica", country: "Russia", price: 400),
        titlePlant(title: "Samantha", country: "Russia", price: 440),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 40,
              child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  color: kPrimaryColor,
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
            Expanded(
                child: FlatButton(
              onPressed: () {},
              child: Text('Description'),
            ))
          ],
        ),
        SizedBox(
          height: kDefaultPadding * 2,
        )
      ]),
    );
  }
}
