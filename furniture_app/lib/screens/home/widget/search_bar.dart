// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      margin: EdgeInsets.only(top: 24.0, bottom: 28.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.075),
            offset: Offset(0.0, 1.0),
            blurRadius: 10.0)
      ]),
      child: TextFormField(
        decoration: InputDecoration(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search unique furniture...",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14.0),
            border: InputBorder.none),
      ),
    );
  }
}
