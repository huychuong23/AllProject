import 'package:flutter/material.dart';
import 'package:grocery_store/screens/details_screen/item_details_screen.dart';

import 'screens/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/':(context) => Home(),
      //   '/details':(context) => ItemDetailsSreen(item: ,)
      // }
    );
  }
}
