import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:getxone/app/controller/animal_controller.dart';

class AnimalBindings extends Bindings{

  void dependencies(){
    Get.lazyPut<AnimalsController>(() => AnimalsController());
  }

}