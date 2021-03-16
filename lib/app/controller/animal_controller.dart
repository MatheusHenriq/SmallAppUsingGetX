import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxone/app/data/models/animal_models.dart';

class AnimalsController extends GetxController{

  

  RxList<Rx<Animal>> animalList = [
    Animal(name:   'Fox'.obs,   isFavorite:  true.obs).obs,
    Animal(name:   'Cat'.obs,   isFavorite: false.obs).obs,
    Animal(name:   'Dog'.obs,   isFavorite: false.obs).obs,
    Animal(name:  'Fish'.obs,   isFavorite: false.obs).obs,
    Animal(name: 'Tiger'.obs,   isFavorite: false.obs).obs,
    Animal(name:   'Pig'.obs,   isFavorite: false.obs).obs,
  ].obs;
  

  changeFavorite(int index){
    animalList[index].value.toggle();
  }


}