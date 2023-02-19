import 'package:box_advertising/bindings/initial_bindings.dart';
import 'package:box_advertising/configs/themes/app_light_theme.dart';
import 'package:box_advertising/controllers/theme_controller.dart';
import 'package:box_advertising/data_uploader_screen.dart';
import 'package:box_advertising/firebase_options.dart';
import 'package:box_advertising/routes/app_routes.dart';
import 'package:box_advertising/screens/home/home_screen.dart';
import 'package:box_advertising/screens/introduction/introduction.dart';
import 'package:box_advertising/screens/splash/splash_screen.dart';
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
      title: '3Box Advertising',

      theme: Get.find<ThemeController>().lightTheme,
      initialRoute: AppRoutes.getSplashPage(),
      getPages: AppRoutes.routes,

    );

  }
}

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(home: DataUploaderScreen(),));
// }
