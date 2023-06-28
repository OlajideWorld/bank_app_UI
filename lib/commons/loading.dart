import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LoadingAnimationWidget.twistingDots(
        leftDotColor: maincolor,
        rightDotColor: const Color(0xFFEA3799),
        size: 200,
      ),
    ));
  }
}
