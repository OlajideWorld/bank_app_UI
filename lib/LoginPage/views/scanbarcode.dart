import 'dart:io';

import 'package:bank_app/signup%20page/view/successscreen.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../commons/getsanckbar.dart';

class ScanQRcode extends StatefulWidget {
  const ScanQRcode({super.key});

  @override
  State<ScanQRcode> createState() => _ScanQRcodeState();
}

class _ScanQRcodeState extends State<ScanQRcode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? _controller;
  double scanArea = 140;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      _controller!.pauseCamera();
    }
    _controller!.resumeCamera();
  }

  popAuth() async {
    showsheet(context);
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.off(() => const SignInSuccess());
  }

  showsheet(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            backgroundColor: whitecolor,
            title: SizedBox(
              height: heightSize(50),
              width: widthSize(50),
              child: Column(
                children: [
                  SizedBox(
                    height: heightSize(20),
                    width: widthSize(20),
                    child: const CircularProgressIndicator(
                      backgroundColor: whitecolor,
                      color: maincolor,
                    ),
                  ),
                  SizedBox(height: heightSize(10)),
                  Text(
                    "Loading...",
                    style: TextStyle(
                        color: maincolor,
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(heightSize(70)),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              padding: EdgeInsets.only(left: widthSize(48)),
              decoration: const BoxDecoration(color: whitecolor),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: textcolor1,
                    size: heightSize(24),
                  ),
                ),
              ),
            ),
          )),
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
              height: heightSize(565),
              width: MediaQuery.of(context).size.width,
              child: _buidQrscanningScreen(context)),
          SizedBox(height: heightSize(42)),
          Text(
            "Scan QR for Refrel",
            style: TextStyle(
                color: maincolor,
                fontSize: fontSize(16),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: heightSize(37)),
          Padding(
            padding: EdgeInsets.only(left: widthSize(68)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: heightSize(51),
                width: widthSize(51),
                decoration: BoxDecoration(
                    color: whitecolor,
                    border: Border.all(color: whitecolor),
                    borderRadius:
                        BorderRadius.all(Radius.circular(widthSize(12))),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: widthSize(10),
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ]),
                child: Icon(
                  Icons.landscape,
                  size: heightSize(24),
                  color: maincolor,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget _buidQrscanningScreen(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      onPermissionSet: (ctrl, p) => _onpermission(context, ctrl, p),
      overlay: QrScannerOverlayShape(
          cutOutSize: scanArea,
          borderWidth: widthSize(9),
          borderLength: heightSize(33),
          borderColor: whitecolor),
    );
  }

  void _onpermission(
      BuildContext context, QRViewController ctrl, bool permission) {
    if (!permission) {
      Get.back();
      getErrorSnackBar("No Permission!");
    }
  }

  void _onQRViewCreated(QRViewController qrcontroller) {
    setState(() {
      this._controller = qrcontroller;
    });

    _controller?.scannedDataStream.listen((scanData) {
      setState(() {
        print(scanData.toString());
        result = scanData;
      });
      if (result?.code != null) {
        _controller?.pauseCamera();
        popAuth();
      }
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
