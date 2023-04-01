import 'package:firebase_splash_login/features/splash/splash_view.dart';
import 'package:firebase_splash_login/product/initialize/application_start.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants/color_constants.dart';

Future<void> main() async {
  //Firebase proje başlangıç kodları
  await ApplicationStart.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: ColorConstants.whiteColor,
            elevation: 0,
           // toolbarHeight: 150,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorConstants.whiteColor,
              statusBarIconBrightness: Brightness.dark,
            ),
          ),
        ),
      home: const SplashView()
    );
  }
}
