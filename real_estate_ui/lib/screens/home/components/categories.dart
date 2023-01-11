import 'package:flutter/widgets.dart';
import 'package:real_estate_ui/constants/constants.dart';
import 'package:real_estate_ui/data/data.dart';

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
      padding: const EdgeInsets.only(
          left: appPadding, top: appPadding / 2, bottom: appPadding),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return _builCategoryList(context, index);
            }),
      ),
    );
  }

  Widget _builCategoryList(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 3),
        child: Container(
          width: size.width * 0.25,
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedCategory == index
                  ? darkBlue
                  : black.withOpacity(0.4)),
          child: Center(
            child: Text(
              categoryList[index],
              style:
                  TextStyle(color: selectedCategory == index ? white : black),
            ),
          ),
        ),
      ),
    );
  }
}
