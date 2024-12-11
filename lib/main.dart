import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    Sizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 200),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },

    ),
  );
}