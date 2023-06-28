import 'package:bank_app/Finance%20Page/view/finanacespage.dart';
import 'package:bank_app/Location/view/locationpage.dart';
import 'package:bank_app/authpage/view/authScreen.dart';
import 'package:bank_app/home%20page/view/homesccreen.dart';
import 'package:bank_app/onboardscreen/view/onboardScreen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../LoginPage/views/scanbarcode.dart';
import '../Profile/view/profilescreeen.dart';
import '../authpage/bindings/authbinding.dart';
import '../splashscreen/view/splashscreen.dart';

class Routes {
  static const splashScreen = "/splashscreen";
  static const homeScreen = '/homescreen';
  static const onBoardScreen = '/onboard';
  static const authScreen = '/authscreen';
  static const location = "/locationscreen";
  static const profileScreen = "/profilescreen";
  static const scanBarcode = "/scanbarcode";
  static const finances = "/finances";
}

class Pages {
  static const splashScreen = Routes.splashScreen;
  static final routes = [
    GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
    GetPage(
        name: Routes.authScreen,
        page: () => const AuthScreen(),
        binding: AuthBindings()),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        binding: AuthBindings()),
    GetPage(name: Routes.onBoardScreen, page: () => const OnBoardScreen()),
    GetPage(name: Routes.location, page: () => const LocationScreen()),
    GetPage(name: Routes.finances, page: () => const FinancesPages()),
    GetPage(name: Routes.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: Routes.scanBarcode, page: () => const ScanQRcode())
  ];
}
