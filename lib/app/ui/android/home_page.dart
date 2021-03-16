import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/controller/animal_controller.dart';
import 'package:getxone/app/ui/android/widgets/drawer_widget.dart';
import 'package:getxone/app/ui/theme/app_theme.dart';

class HomePage extends GetView<AnimalsController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('HomePage'),
          ),

        body:  ListView.builder(

          itemCount: controller.animalList.length,

          itemBuilder: (_,index) => Obx(() => ListTile(
            
            title : Text('${controller.animalList[index].value.name}'),
            
            trailing: controller.animalList[index].value.isFavorite.value ? Icon(Icons.star, color: Colors.yellow):
            Icon(Icons.star_border),
            
            onTap : () =>  controller.changeFavorite(index),

            ),
            ),
          ),   
    );
  }
}