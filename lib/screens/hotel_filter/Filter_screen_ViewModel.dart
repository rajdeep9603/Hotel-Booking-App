import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterViewModel {
  double progressvalue = 0;

  RangeValues startingvalues = const RangeValues(100, 600);
  RangeLabels labels = RangeLabels('1', "100");

  bool breakfast = false;
  bool pool = false;
  bool wifi = false;
  bool parking = false;
  bool pet = false;

  bool allvalue = false;
  bool Apartment = false;
  bool home = false;
  bool villa = false;
  bool hotel = false;
  bool resort = false;

  void oncrossTap(){
    Get.back();
  }
}

