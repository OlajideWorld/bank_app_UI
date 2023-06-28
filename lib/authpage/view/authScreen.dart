// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bank_app/LoginPage/views/loginpage.dart';
import 'package:bank_app/commons/getsanckbar.dart';
import 'package:bank_app/signup%20page/view/signupscreen.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

import '../../home page/view/homesccreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  bool? _canCheckbiometrics;
  List<BiometricType>? _availableBiometrics;
  String authorized = "Not Authorised";
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported),
        );
    _checkBiometrics();
    _getAvailableBiometrics();
  }

  Future<void> _checkBiometrics() async {
    bool? canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      log(e.toString());
    }
    if (!mounted) {
      return;
    }
    setState(() {
      _canCheckbiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType>? availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
      print("List of Biometrics: $availableBiometrics");
    } on PlatformException catch (e) {
      log(e.toString());
    }

    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticateBiometrics() async {
    bool authenticate = false;

    try {
      authenticate = await auth.authenticate(
          authMessages: const [
            AndroidAuthMessages(
              signInTitle: 'Biometric authentication required!',
              cancelButton: 'No thanks',
            )
          ],
          localizedReason: "Use Face Id to Authenticate",
          options: const AuthenticationOptions(
              stickyAuth: true, biometricOnly: true));

      print("Authenticated: $authenticate");
    } on PlatformException catch (e) {
      log(e.toString());
    }
    if (!mounted) return;
    setState(() {
      authorized =
          authenticate ? "Authorized Success" : "Failed to Authenticate";
      if (authenticate) {
        getSuccessSnackBar("Biometrics successfully Authenticated");
        Get.to(() => HomeScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) => _authenticateBiometrics(),
      child: Scaffold(
          backgroundColor: whitecolor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: heightSize(233)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: heightSize(40),
                        width: widthSize(175),
                        child: Image.asset("assets/HQ1.png"),
                      ),
                      SizedBox(height: heightSize(100)),
                      SizedBox(
                        height: heightSize(60),
                        width: widthSize(60),
                        child: Image.asset("assets/arrowup.jpg"),
                      ),
                      SizedBox(height: heightSize(23)),
                      Text(
                        "Swipe up to login",
                        style: TextStyle(
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w400,
                            color: maincolor),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: widthSize(60),
                              right: widthSize(47),
                              bottom: heightSize(50)),
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: SizedBox(
                              height: heightSize(25),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: maincolor,
                                          fontSize: fontSize(20),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => const SignupScreen());
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: maincolor,
                                            fontSize: fontSize(20),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          )),
    );
  }
}
