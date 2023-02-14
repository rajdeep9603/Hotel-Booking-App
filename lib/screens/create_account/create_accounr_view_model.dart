import 'package:client_ui_app/screens/hotels/hotel_book_screen.dart';
import 'package:client_ui_app/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class createAccountViewModel{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController Lastcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  FocusNode first =FocusNode();
  FocusNode last =FocusNode();
  FocusNode email =FocusNode();
  FocusNode password =FocusNode();

  void allunfocus(){
    first.unfocus();
    last.unfocus();
    email.unfocus();
    password.unfocus();
  }

  void allcontrollerclear(){
    firstcontroller.clear();
    Lastcontroller.clear();
    emailcontroller.clear();
    Passwordcontroller.clear();
  }

  String ? commonvalidator(String value,String errortext){
    if(value == ''){
      return errortext;
    }
    return null;
  }

  void login(){
      Get.to(()=>Loginscreen());
  }

  void signup(){
    if(formKey.currentState!.validate()){
      allunfocus();
      Get.to(()=>Hotelscreen());
    }
    return null;
  }
}