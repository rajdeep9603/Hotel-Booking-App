import 'package:client_ui_app/help_center_detail.dart';
import 'package:get/get.dart';

class HelpcenterViewModel{
  List<String> helptitle=[
    "Paying for a reservation",
    "Trust and Saftey",
    "Paying for a reservation",
    "Trust and Saftey",
  ];

  List<String> helpsubtitle = [
    "How do i cancle my rooms reservation?",
    "what methods of payment does room accept?",
    "When am i charged for a reservation?",
    "How do i edit or remove a payment method?",
  ];

  void helpdetails(){
    Get.to(()=>Helpcenterdetail());
  }
}