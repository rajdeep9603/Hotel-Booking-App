import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget boxcontainer(){
  return  Container(
    width: Get.width,
    height: Get.height,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/home.png"),
          fit: BoxFit.cover),
    ),
  );
}

Widget upperbox({required VoidCallback onpress}){
  return Container(
    child: Column(
      children: [
        SizedBox(height: Get.height / 7),
        Center(
            child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: Get.width / 6,
              height: Get.height / 7,
              decoration: BoxDecoration(
                color: ColorRes.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage("assets/images/home2.png"),
                    )),
            )),
        SizedBox(height: Get.height / 400),
        Center(
          child: Text(
            "Motel",
            style: AppTextStyle(
                textcolor: ColorRes.black,
                weight: FontWeight.bold,
                size: 24),
          ),
        ),
        SizedBox(height: Get.height / 400),
        Center(
          child: Text(
            "Best hotel deals for your holiday",
            style: AppTextStyle(
                textcolor: ColorRes.black,
                size: 18),
          ),
        ),
        SizedBox(height: Get.height / 3),
        Center(
          child: InkWell(
            onTap: onpress,
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 35, 50, 0),
              alignment: Alignment.center,
              width: Get.width,
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: ColorRes.green1,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Get Started",
                style: AppTextStyle(textcolor: ColorRes.white,size: 16),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height / 20),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Already have account?',
                style: AppTextStyle(textcolor: ColorRes.white, size: 14),
                children: [
                  TextSpan(
                    text: ' Log in',
                    style: AppTextStyle(textcolor: ColorRes.white, size: 14),
                  )
                ]),
          ),
        ),
      ],
    ),
  );
}