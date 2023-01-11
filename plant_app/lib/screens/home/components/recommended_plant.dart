// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/details/detail_screen.dart';

import '../../../constants.dart';

class RecommendedPlant extends StatelessWidget {
  const RecommendedPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PlantCard(
              image: "assets/images/image_1.png",
              title: 'Samanthan',
              country: 'Russia',
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              }),
          PlantCard(
              image: "assets/images/image_2.png",
              title: 'Angelica',
              country: 'Russia',
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              }),
          PlantCard(
              image: "assets/images/image_3.png",
              title: 'Samanthan',
              country: 'Russia',
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              }),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 10),
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5))),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
