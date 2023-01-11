// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app/app_bottom_navigation.dart';
import 'package:furniture_app/data/fake.dart';
import 'package:furniture_app/screens/home/widget/category_card.dart';
import 'package:furniture_app/screens/home/widget/header.dart';
import 'package:furniture_app/screens/home/widget/image_card.dart';
import 'package:furniture_app/screens/home/widget/section.dart';
import 'package:furniture_app/screens/home/widget/today_promo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Header(),
          Section(
            "Categories",
            // Fake.categories.map((i) {})
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  CategoryCard(
                      title: "Living Room",
                      iconPath: "assets/icons/chest.svg",
                      onTap: () {}),
                  CategoryCard(
                      title: "Bathroom",
                      iconPath: "assets/icons/bathtub.svg",
                      onTap: () {}),
                  CategoryCard(
                      title: "Workspaces",
                      iconPath: "assets/icons/desk.svg",
                      onTap: () {}),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 28.0,
          ),
          Section("Today \'s Promo"),
          SizedBox(
            height: 28.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                children: [
                  TodayPromo(
                      title: "All Item Furniture\nDiscount Up to",
                      subtitle: "50%",
                      caption: "",
                      tag: '30 April 2019',
                      imagePath: 'assets/images/furniture/furniture1.png',
                      backgroundImagePath: 'assets/images/splash1.png',
                      reverseGradient: false),
                  TodayPromo(
                    imagePath: 'assets/images/furniture/ghe.png',
                    tag: "sbfd",
                    backgroundImagePath: 'assets/images/splash2.png',
                    reverseGradient: true,
                    title: 'Get voucher gift',
                    subtitle: '\$50.00',
                    caption: '*for new member\'s\nof Furniture Shop',
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 28.0),
          Section("Trending Furniture"),
          SizedBox(height: 28.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(left: 28.0, right: 28.0),
              child: Row(
                children: [
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/jacalyn-beales-435629-unsplash.png'),
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/sven-brandsma-1379481-unsplash.png'),
                ],
              ),
            ),
          ),
          SizedBox(height: 28.0),
          Section("Feature Furniture"),
          SizedBox(height: 28.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(left: 28.0, right: 28.0),
              child: Row(
                children: [
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/pexels-eric-montanah-1350789.jpg'),
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/pexels-patryk-kamenczak-775219.jpg'),
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/pexels-pixabay-276534.jpg'),
                  ImageCard(
                      imagePath:
                          'assets/images/furniture/pexels-steve-johnson-923192.jpg'),
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
