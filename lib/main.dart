import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/bindings/animal_bindings.dart';
import 'package:getxone/app/routes/app_pages.dart';
import 'package:getxone/app/routes/app_routes.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';


void main() {
  runApp(GetMaterialApp(
    title : 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialBinding: AnimalBindings(),
    initialRoute: Routes.INITIAL,
    theme : appThemeData,
    darkTheme: appThemeDataDark,
    )
  );
}

