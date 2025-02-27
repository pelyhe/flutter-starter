import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/general/route.dart';
import 'package:project/localization/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        translations: Languages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en', 'US'),
        initialRoute: '/',
        getPages: AppRoutes.pages);
  }
}
