import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';

class OnboardWidget1 extends StatelessWidget {
  const OnboardWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize(300),
      child: Column(children: [
        SizedBox(
          height: heightSize(270),
          width: widthSize(243),
          child: Image.asset("assets/Imageonboard1.png"),
        ),
        SizedBox(height: heightSize(93)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthSize(30)),
          child: Text(
            "We are into automating Microfinance in World",
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
