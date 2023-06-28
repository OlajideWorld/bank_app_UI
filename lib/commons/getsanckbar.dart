import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

getSuccessSnackBar(String message) {
  Get.snackbar(
    "Success",
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: maincolor,
    colorText: whitecolor,
    borderRadius: 10,
    margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
  );
}

getErrorSnackBar(String message) {
  Get.snackbar(
    "Error",
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: whitecolor,
    borderRadius: 10,
    margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
  );
}
