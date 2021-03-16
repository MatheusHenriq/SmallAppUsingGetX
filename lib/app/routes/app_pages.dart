import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxone/app/routes/app_routes.dart';
import 'package:getxone/app/ui/android/configuration_page.dart';
import 'package:getxone/app/ui/android/home_page.dart';
import 'package:getxone/app/ui/android/initial_page.dart';
import 'package:getxone/app/ui/android/profile_page.dart';

class AppPages{
  static final routes = [
    GetPage(name: Routes.INITIAL, page: ()=> InitialPage()),
    GetPage(name: Routes.SECOND, page: () => HomePage()),
    GetPage(name: Routes.CONFIGURATION, page: () => ConfigurationPage()),
    GetPage(name: Routes.PROFILE, page: () => ProfilePage())
  ];
}