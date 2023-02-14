import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangepasswordViewModel{

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController newpwd = TextEditingController();
  TextEditingController confirmpwd = TextEditingController();

  String? commonvalidator(String value,String errortext){
    if(value == "")
    {
    return errortext;
    }
    return null;
  }

  void apply(){
    if(formkey.currentState!.validate()){
      Get.back();
    }
    return null;
  }
}