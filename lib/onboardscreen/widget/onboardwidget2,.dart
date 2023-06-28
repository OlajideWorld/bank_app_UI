// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class OnboardWidget2 extends StatelessWidget {
  const OnboardWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize(300),
      child: Column(children: [
        SizedBox(
          height: heightSize(220),
          width: widthSize(320),
          child: Image.asset("assets/Imageonboard2.png"),
        ),
        SizedBox(height: heightSize(93)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthSize(30)),
          child: Text(
            "Paynow is a Microfinance business Software",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textcolor1,
                fontSize: fontSize(23),
                fontWeight: FontWeight.w700),
          ),
        )
      ]),
    );
  }
}
