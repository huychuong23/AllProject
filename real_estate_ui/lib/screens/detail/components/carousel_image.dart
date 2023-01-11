// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage(
      {Key? key, required this.imgListUrl})
      : super(key: key);
  final List<String> imgListUrl;
  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.purple.withOpacity(0.5),
        images: [
          AssetImage(widget.imgListUrl[0]),
          AssetImage(widget.imgListUrl[1]),
          AssetImage(widget.imgListUrl[2]),
          AssetImage(widget.imgListUrl[3]),
          AssetImage(widget.imgListUrl[4]),
          AssetImage(widget.imgListUrl[5])
        ],
      ),
    );
  }
}
