import 'package:flutter/material.dart';
import 'package:real_estate_ui/model/house.dart';
import 'package:real_estate_ui/screens/detail/components/carousel_image.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.house}) : super(key: key);
  final House house;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CarouselImage( imgListUrl: imgListUrl)
            ],
          ),
        ],
      ),
    );
  }
}
