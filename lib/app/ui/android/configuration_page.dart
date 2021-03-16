import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/routes/app_routes.dart';
import 'package:getxone/app/ui/android/profile_page.dart';
import 'package:getxone/app/ui/android/widgets/avataricon_widget.dart';
import 'package:getxone/app/ui/android/widgets/circleavatar_widget.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';

class ConfigurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : Builder(
          builder: (BuildContext context){
            return IconButton(
              icon : const Icon(Icons.arrow_back),
              onPressed: (){
                Get.back();
              },
            );
          }
        ),
        title : Text(
          'Configurações',
          style : kTextStyle
        ),
      ),
      body : Column(
        children : [
          ListTile(
            leading: Builder(
              builder : (BuildContext context){
                return AvatarIconWidget(onTap : (){},radius : 20);
              }            
            ),
            title: Text('What does the fox say?'),
            subtitle: Text('Ring-ding-ding-ding-dingeringeding'),
            onTap: (){
              Get.to(ProfilePage());
            },        
          ),
          
        ]
      ),
    );
  }
}