// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/components/feature_plant_card.dart';
import 'package:plant_app/screens/home/components/recommended_plant.dart';
import 'package:plant_app/screens/home/components/title_with_button.dart';
import 'header_with_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      HeaderWithSearch(size: size),
      titleWithMoreButton(
        title: 'Recommended',
        press: () {},
      ),
      RecommendedPlant(),
      titleWithMoreButton(
        title: 'Feature Plants',
        press: () {},
      ),
      featurePlant(),
    ]));
  }
}
