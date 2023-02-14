import 'package:client_ui_app/screens/hotels/hotel_book_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginViewModel{
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  FocusNode email = FocusNode();
  FocusNode password = FocusNode();


  void allcontrollerclear(){
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  void allunfocus(){
    email.unfocus();
    password.unfocus();
  }



  String ? commonvalidator(String value,String errortext){
    if(value == ''){
      return errortext;
    }
    return null;
  }


  void login(){
      if(formkey.currentState!.validate()) {
        allunfocus();
        allcontrollerclear();
        print("yes");
        Get.to(() => Hotelscreen());
      }
     else{
       print("hello");
      }
  }

}