import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_setting_ViewModel.dart';

class Setting extends StatefulWidget {
  String? countryname;
  bool? countrybool;
  Setting(this.countryname,this.countrybool);
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  SettingViewModel? model;

  @override
  Widget build(BuildContext context) {
    model = (model ?? SettingViewModel());
    return Scaffold(
    backgroundColor: ColorRes.white1,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             alignment: Alignment.centerLeft,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: Get.height/13,),
                 BackArrow(),
                 SizedBox(height: Get.height/50,),
                 Text("Settings",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                 SizedBox(height: Get.height/50,),
               ],
             ),
           ),

            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Notification",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.notification_important_sharp,color: ColorRes.grey,),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Theme Mode",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.wb_sunny_rounded,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Fonts",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.font_download,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Color",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.color_lens,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Language",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.language,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      InkWell(
                        onTap:(){
                          model!.country();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Country",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                            // (countrybool == true) ? Text(widget.countryname): Icon(Icons.countertops,color: ColorRes.grey),
                          ],
                        ),
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Currency",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.money_off,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Terms of Services",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.chevron_right,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Privacy Policy",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.chevron_right,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Give Us Feedback",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.chevron_right,color: ColorRes.grey),
                        ],
                      ),
                      Divider(height: Get.height/18,),

                      InkWell(
                        onTap: (){
                          model!.logout();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Log out",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                            Icon(Icons.chevron_right,color: ColorRes.grey),
                          ],
                        ),
                      ),
                      Divider(height: Get.height/18,),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
