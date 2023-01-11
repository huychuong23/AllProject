import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                width: SizeConfig.screenWidth * 0.6,
                height: 50,
                color: Colors.black,
              )
            ],
          )
        ],
      )),
    );
  }
}
