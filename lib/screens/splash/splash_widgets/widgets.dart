import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget tabContainer({
  required String title,
  required String subtitle,
  required String subtitle2,
  required String image,
}){
  return Container(
    child: Column(
      children: [
        commonBox(
          // width: Get.width/3,
          height: Get.height/2.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(height: 15),
        commonBox(
          alignment: Alignment.center,
          child: Text(title,style: AppTextStyle(size: 25,weight: FontWeight.bold,textcolor: ColorRes.black),),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("book one of your unique hotel to",style: AppTextStyle(textcolor: ColorRes.grey,size: 15),)),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("escape the ordinary",style: AppTextStyle(textcolor: ColorRes.grey,size: 15),)),

      ],
    ),
  );
}