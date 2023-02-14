
import 'package:client_ui_app/screens/create_account/create_accounr_screen.dart';
import '../login/login_screen.dart';
import 'package:get/get.dart';

class SplashViewModel{
  void login(){
    Get.to(()=>Loginscreen());
  }

  void createAccount(){
    Get.to(()=>Createaccount());
  }

}