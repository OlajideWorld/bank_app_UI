import 'dart:io';

import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:bank_app/signup%20page/view/setuppincode.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../commons/getsanckbar.dart';

class ProfileImageScreen extends StatefulWidget {
  const ProfileImageScreen({super.key});

  @override
  State<ProfileImageScreen> createState() => _ProfileImageScreenState();
}

class _ProfileImageScreenState extends State<ProfileImageScreen> {
  final AuthController controller = AuthController.instance;

  Future pickImage(ImageSource source) async {
    try {
      final picture = await ImagePicker().pickImage(source: source);
      if (picture == null) return;
      File? newpicture = File(picture.path);
      setState(() {
        controller.image = newpicture;
        Get.to(() => const SetupPinCode());
      });
      return controller.image;
    } on PlatformException catch (e) {
      return getErrorSnackBar("Failed to pick an Image, $e");
    }
  }

  showSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text(
                  "Camera",
                  style: TextStyle(color: maincolor),
                ),
                onTap: () => pickImage(ImageSource.camera),
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text(
                  "Gallery",
                  style: TextStyle(color: maincolor),
                ),
                onTap: () => pickImage(ImageSource.gallery),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: heightSize(50), left: widthSize(30), right: widthSize(30)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: textcolor1,
            ),
          ),
          SizedBox(height: heightSize(30)),
          Text(
            "Add a photo 📷",
            style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: fontSize(34),
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: heightSize(10)),
          Text(
            "Add a profile photo so your friends know it's you",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: fontSize(17),
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: heightSize(35)),
          if (controller.image == null)
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                  radius: heightSize(100),
                  backgroundImage: const AssetImage("assets/profileimage.png")),
            ),
          if (controller.image != null)
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: heightSize(100),
                backgroundImage: Image.file(
                  controller.image!,
                  fit: BoxFit.fitWidth,
                ).image,
              ),
            ),
          const Spacer(),
          GestureDetector(
            onTap: () => showSheet(context),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: heightSize(20)),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: heightSize(60),
                  width: widthSize(295),
                  decoration: BoxDecoration(
                    color: borderColor,
                    borderRadius: BorderRadius.circular(widthSize(16)),
                    border: Border.all(color: borderColor),
                  ),
                  child: Center(
                    child: Text(
                      "Choose a photo",
                      style: TextStyle(
                          color: textcolor1,
                          fontSize: fontSize(16),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: heightSize(20)),
          Padding(
            padding: EdgeInsets.only(bottom: heightSize(20)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Maybe Later',
                style: TextStyle(fontSize: fontSize(24), color: textcolor1),
              ),
            ),
          )
        ]),
      )),
    );
  }
}
