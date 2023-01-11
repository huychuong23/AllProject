import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants/colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  const CategoryCard(
      {Key? key,
      required this.title,
      required this.iconPath,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 130,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 15.0,
              offset: Offset.zero,
              color: Colors.black.withOpacity(0.1))
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              height: 42,
              width: 42,
              child: SvgPicture.asset(
                iconPath,
                color: primaryColor,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16.0, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
