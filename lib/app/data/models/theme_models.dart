import 'package:get/get.dart';

class Theme{
  RxBool light;
  RxBool dark;

  Theme({this.light, this.dark,});

  changeTheme(){
    light.toggle();
    dark.toggle();
  }

}