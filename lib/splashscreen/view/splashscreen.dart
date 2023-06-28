import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
        child: Center(child: SizedBox(width: widthSize(200),child: Image.asset("assets/HQ1.png"))),
      ),
    );
  }
}
