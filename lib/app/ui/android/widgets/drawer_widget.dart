import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/controller/configuration_controller.dart';
import 'package:getxone/app/routes/app_routes.dart';
import 'package:getxone/app/ui/android/configuration_page.dart';
import 'package:getxone/app/ui/android/widgets/circleavatar_widget.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';

class DrawerWidget extends StatelessWidget {

  ConfigurationController controller = Get.put(ConfigurationController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding : EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Material(
              color : Colors.amber,
              child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  CircleAvatarWidget(url :kDefaultImageUrl),
                  SizedBox(
                    height:10
                  ),
                  Text('Fox, Your virtual friend'),
                ],
              ),
            ),   
          ),

          Divider(
            height : 10,
            color : Colors.grey
          ),

          ListTile(
            leading : controller.theme.dark == false.obs  ? Icon(Icons.wb_sunny)  : Icon(Icons.nights_stay_outlined) , 

            //leading : Get.isDarkMode  ?  Icon(Icons.wb_sunny) : Icon(Icons.nights_stay_outlined),  
            title : Text('Change Theme'),
            onTap:(){
              controller.updateTheme();
               controller.theme.dark  == false.obs ? Get.changeTheme(appThemeDataDark)  : Get.changeTheme(appThemeData);
              //Get.isDarkMode ?  Get.changeTheme(appThemeData) : Get.changeTheme(appThemeDataDark);

            }
          ),

        ],
     )
    );
  }
}