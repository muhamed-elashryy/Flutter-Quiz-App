import 'package:teacher_center/bindings/initial_bindings.dart';
import 'package:teacher_center/configs/themes/app_light_theme.dart';
import 'package:teacher_center/controllers/theme_controller.dart';
import 'package:teacher_center/data_uploader_screen.dart';
import 'package:teacher_center/firebase_options.dart';
import 'package:teacher_center/routes/app_routes.dart';
import 'package:teacher_center/screens/home/home_screen.dart';
import 'package:teacher_center/screens/introduction/introduction.dart';
import 'package:teacher_center/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configs/themes/app_dark_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teachers Center',

      theme: Get.find<ThemeController>().lightTheme,
      initialRoute: AppRoutes.getSplashPage(),
      getPages: AppRoutes.routes,

    );

  }
}


