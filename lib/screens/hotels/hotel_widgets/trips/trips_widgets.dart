import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/screens/hotels/hotel_view_model.dart';
import 'trips_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget tripsbody(controller,HotelscreenViewModel model){
  return Scaffold(
    backgroundColor: ColorRes.white1,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top:25,left: 20,right: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Trip",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
            SizedBox(height: Get.height/50,),
            Container(
              // decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
              width: Get.width,
              height: Get.height/12,
              decoration: BoxDecoration(
                color: ColorRes.white,
                borderRadius:BorderRadius.circular(25),
              ),
              child: alltabs(controller),
            ),

            SizedBox(height: Get.height/25),

            Column(
              children: [
                alltabbars(controller,model),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}