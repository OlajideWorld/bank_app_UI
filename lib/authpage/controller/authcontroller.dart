import 'dart:io';

import 'package:bank_app/Routes/routes.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isloggin = false.obs;
  static AuthController instance = Get.find();
  File? image;
  var currentIndex = 1;
  @override
  void onReady() async {
    // TODO: implement onReady
    super.onReady();
    if (isloggin.value == false) {
      await Future.delayed(const Duration(seconds: 3), () {});
      Get.offNamed(Routes.authScreen);
    } else {
      await Future.delayed(const Duration(seconds: 3), () {});
      Get.offNamed(Routes.homeScreen);
    }
  }
}
