import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItems {
  String number;
  String text;
  String secondaryText;
  String amount;
  OrderItems(
      {required this.number,
      required this.text,
      required this.secondaryText,
      required this.amount});
}