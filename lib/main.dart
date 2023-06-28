import 'package:bank_app/utils/size-config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Routes/routes.dart';
import 'authpage/bindings/authbinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      return GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        title: 'School_Management',
        debugShowCheckedModeBanner: false,
        initialBinding: AuthBindings(),
        initialRoute: Pages.splashScreen,
        getPages: Pages.routes,
      );
    });
  }
}
