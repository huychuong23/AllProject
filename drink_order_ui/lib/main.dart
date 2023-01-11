import 'package:drink_order_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drink Oder App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // xđ mật độ trực quan của các thành phần UI
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
