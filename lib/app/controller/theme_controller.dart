import 'package:get/get.dart';
import 'package:getxone/app/data/models/theme_models.dart';

class ConfigurationController extends GetxController{
  
  final theme = Theme(light : false.obs, dark : true.obs); 

  updateTheme(){
      print(theme.light);
      theme.changeTheme();
  }
  

}