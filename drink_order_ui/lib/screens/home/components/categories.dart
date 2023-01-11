import 'package:drink_order_ui/constants/constants.dart';
import 'package:drink_order_ui/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Container(
        height: size.height * 0.07,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: appPadding / 2.5, top: appPadding / 3),
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
          itemCount: categoryList.length,
        ),
      ),
    );
  }

  Widget _buildCategory(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding / 3),
        child: Container(
          width: size.width * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                  color: selectedCategory == index
                      ? white.withOpacity(0.4)
                      : Colors.transparent,
                  width: 2.0)),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: selectedCategory == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: selectedCategory == index
                      ? white
                      : white.withOpacity(0.4)),
            ),
          ),
        ),
      ),
    );
  }
}
