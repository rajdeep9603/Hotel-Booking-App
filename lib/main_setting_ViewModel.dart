

import 'package:client_ui_app/screens/home/home_screen.dart';
import 'package:client_ui_app/setting_country_countryscren.dart';
import 'package:get/get.dart';

class SettingViewModel{

  void country(){
    Get.to(()=>Country());
  }


  void logout(){
    Get.off(()=>Homepage());
  }


}