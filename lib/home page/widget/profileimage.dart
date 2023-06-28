import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/sizes.dart';

class ProfileImageWidget extends StatelessWidget {
  ProfileImageWidget({super.key});
  final AuthController controller = AuthController.instance;

  @override
  Widget build(BuildContext context) {
    if (controller.image != null) {
      CircleAvatar(
        radius: heightSize(22.5),
        backgroundImage: Image.file(
          controller.image!,
          fit: BoxFit.fitWidth,
        ).image,
      );
    }
    return CircleAvatar(
      radius: heightSize(22.5),
      backgroundColor: whitecolor,
      backgroundImage: const AssetImage("assets/profileimage.png"),
    );
  }
}
