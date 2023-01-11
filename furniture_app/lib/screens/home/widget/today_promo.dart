// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:furniture_app/constants/colors.dart';

class TodayPromo extends StatelessWidget {
  static final List<Color> bgColors = [primaryPromoColor, secondaryPromoColor];
  final String title;
  final String subtitle;
  final String caption;
  final String tag;
  final String imagePath;
  final String backgroundImagePath;
  final bool reverseGradient;

  const TodayPromo(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.caption,
      required this.tag,
      required this.imagePath,
      required this.backgroundImagePath,
      required this.reverseGradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          width: 250,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 15.0,
                  offset: Offset.zero,
                  color: Colors.black.withOpacity(0.1))
            ],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: reverseGradient != null && reverseGradient
                    ? bgColors.reversed.toList()
                    : bgColors),
            image: DecorationImage(
                image: AssetImage(backgroundImagePath), fit: BoxFit.contain),
          ),
          child: Stack(
            children: [
              if (this.imagePath != null)
                Positioned(
                    bottom: 25.0,
                    right: 0,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    )),
              SizedBox(
                height: 10,
              ),
              Wrap(direction: Axis.vertical, children: [
                Text(this.title,
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.white, height: 1.5)),
                Text(this.subtitle,
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
              ]),
              Positioned(
                left: 0,
                bottom: 0,
                child: this.tag != null
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: tagBackgroundColor,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(
                          this.tag,
                          style: TextStyle(
                              color: Colors.white, fontSize: 12.0, height: 1.5),
                        ),
                      )
                    : Text(
                        this.caption,
                        style: TextStyle(
                            fontSize: 14.0, color: Colors.white, height: 1.5),
                      ),
              ),
            ],
          )),
    );
  }
}
