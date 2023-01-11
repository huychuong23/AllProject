import 'package:flutter/material.dart';

import 'package:real_estate_ui/screens/home/components/bottom_button.dart';
import 'package:real_estate_ui/screens/home/components/categories.dart';
import 'package:real_estate_ui/screens/home/components/custom_app_bar.dart';
import 'package:real_estate_ui/screens/home/components/house.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Column(
          children: [CustomAppBar(), Category(), Houses()],
        ),
        BottomButton()
      ]),
    );
  }
}
