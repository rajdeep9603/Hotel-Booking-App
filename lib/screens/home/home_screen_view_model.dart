import 'package:client_ui_app/filter_screen.dart';
import '../splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel{
  void getstarted(){
    Get.to(()=>Splashscreen());
  }
}