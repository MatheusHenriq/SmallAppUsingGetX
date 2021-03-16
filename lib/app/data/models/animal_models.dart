import 'package:get/get.dart';

class Animal {

  RxString name;
  RxBool isFavorite ;

  Animal({this.name, this.isFavorite});

  toggle(){
    isFavorite.toggle();
  }

}