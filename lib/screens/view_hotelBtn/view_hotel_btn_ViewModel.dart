import 'package:client_ui_app/filter_screen.dart';
import 'package:client_ui_app/screens/hotel_details/hotel_details_screen.dart';
import '../hotel_filter/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewhotelbtnViewModel{
  List<String> appbarimages=["assets/images/nature1.jpg","assets/images/nature2.jpg"];
  List<String> appbartitle = ["Cape Town","Find best deals"];
  List<String>cityimages = ["assets/images/paris.jpg","assets/images/spain.jpg","assets/images/vernazza.jpg","assets/images/london.jpg","assets/images/venice.jpg","assets/images/diamond head.jpg"];
  List<String> citytitle = ["Paris","Spain","Vernazza","London","Venice","Diamond Head"];
  List<String> hotels= ["assets/images/hotel1.jpg","assets/images/hotel2.jpg","assets/images/hotel3.jpg","assets/images/hotel4.jpg","assets/images/hotel5.jpg"];
  List<String> hoteltitle = ["Grand Royal Hotel","Queen Hotel","Grand Royal Hotel","Queen Hotel","Grand Royal Hotel"];
  List<String> km = ["2.0 km to city","4.0 km to city","3.0 km to city","7.0 km to city","2.0 km to city"];
  List<String> rate = ["180","200","60","170","200"];
  List<int> review = [90,74,85,80,95];
  List<String> roompeople = ["01 jul - 05 jul, 1 Room 2 people","02 jul - 06 jul, 1 Room 3 people","05 jul - 09 jul, 1 Room 3 people","01 jul - 05 jul, 1 Room 2 people","01 jul - 04 jul, 1 Room 7 people"];

  List<String> date = ["01 jul - 05 jul","02 jul - 06 jul","05 jul - 09 jul","01 jul - 05 jul","01 jul - 04 jul"];
  List<String> people = [" 1 Room 2 people","1 Room 3 people"," 1 Room 3 people","1 Room 2 people"," 1 Room 7 people"];

  List<IconData> icons = [Icons.lock,Icons.people,Icons.wallet_giftcard,Icons.help,Icons.payments_rounded,Icons.settings];

  List<String> icontitle = ["Change Passwqord","Invite Friend","Credit & Couple","Help Center","Payent","Setting"];

  int currentindex = 0;
  bool showmenu = true;

  void fliterclick(){
    Get.to(()=> Filterscreen());
  }

   hotelclick(String hotelTitle){
    Get.to(()=> HoteldDetail(hoteltitle: hotelTitle,));
  }

}