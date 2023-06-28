import "package:flutter/material.dart";
import "package:get/get.dart";

import "../authpage/controller/authcontroller.dart";
import "../utils/colors.dart";
import "../utils/sizes.dart";

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final controller = AuthController.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightSize(45),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
          right: widthSize(15), left: widthSize(15), bottom: heightSize(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: heightSize(40),
            width: widthSize(60),
            child: getIcons(Icons.home, 1, "Home", 'homescreen'),
          ),
          SizedBox(
              height: heightSize(40),
              width: widthSize(60),
              child: getIcons(
                  Icons.location_on_outlined, 2, "Location", "locationscreen")),
          SizedBox(
            height: heightSize(40),
            width: widthSize(60),
            child: getIcons(
                Icons.monetization_on_outlined, 3, "Finance", "finances"),
          ),
          SizedBox(
            height: heightSize(40),
            width: widthSize(60),
            child: getIcons(Icons.qr_code, 4, "Scan QR", "scanbarcode"),
          ),
          SizedBox(
            height: heightSize(40),
            width: widthSize(60),
            child: getIcons(Icons.person, 5, "Profile", "profilescreen"),
          ),
        ],
      ),
    );
  }

  Widget getIcons(IconData icon, int index, String pageName, String route) {
    return GestureDetector(
      onTap: () {
        setState(() {
          controller.currentIndex = index;
        });
        Get.toNamed('/$route');
      },
      child: Column(children: [
        Icon(icon,
            size: heightSize(24),
            color: index == controller.currentIndex ? textcolor1 : textcolor4),
        SizedBox(height: heightSize(4)),
        Text(
          pageName,
          style: TextStyle(
              fontSize: fontSize(10),
              fontWeight: FontWeight.w400,
              color:
                  index == controller.currentIndex ? textcolor1 : textcolor4),
        )
      ]),
    );
  }
}
