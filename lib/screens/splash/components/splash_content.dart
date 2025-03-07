import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image,
  }):super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionatesScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: getProportionatesScreenHeight(20)),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(
          image,
          height: getProportionatesScreenHeight(265),
          width: getProportionatesScreenWidth(235),
          fit: BoxFit.contain,
        ),
      Spacer(),
      ],
    );
  }
}
