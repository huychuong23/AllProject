// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:real_estate_ui/constants/constants.dart';
import 'package:real_estate_ui/data/data.dart';
import 'package:real_estate_ui/screens/detail/detail_screen.dart';

class Houses extends StatefulWidget {
  const Houses({Key? key}) : super(key: key);

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return _buildHouse(context, index);
      },
      itemCount: houseList.length,
    ));
  }

  Widget _buildHouse(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    var house = houseList[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      house: house,
                    )));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: appPadding / 2, horizontal: appPadding),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(house.imageUrl),
                    ),
                  ),
                  Positioned(
                    top: appPadding / 2,
                    right: appPadding / 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              house.isFav = !house.isFav;
                            });
                          },
                          icon: house.isFav
                              ? Icon(
                                  Icons.favorite,
                                  color: red,
                                )
                              : Icon(
                                  Icons.favorite_border_rounded,
                                  color: black,
                                )),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$${house.price.toStringAsFixed(3)}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: appPadding / 3),
                  Expanded(
                    child: Text(
                      house.address,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15, color: black.withOpacity(0.4)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "${house.bedRooms} bedrooms /",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${house.bathRooms} bathrooms /",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${house.sqFeet} sqft",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
