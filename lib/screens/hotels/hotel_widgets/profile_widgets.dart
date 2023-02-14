import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/screens/hotels/hotel_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profile(HotelscreenViewModel model){
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height/22),
          InkWell(
            onTap: (){
              model.viewProfile(imagename: "assets/images/profile.jpg");
            },
            child: ListTile(
                title: Text("Amanda",style: AppTextStyle(textcolor: ColorRes.black,size: 20,weight: FontWeight.bold),),
                subtitle: Text("View and Edit profile",style: AppTextStyle(textcolor: ColorRes.grey,size: 16,weight: FontWeight.normal),),
                trailing: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                )
            ),
          ),

          SizedBox(height: Get.height/40),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:12),
                child: Column(
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Change Password",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.lock,color: ColorRes.grey,size: 27,),
                        ],
                      ),
                      onTap: (){
                        model.changePwd();
                      },
                    ),
                    Divider(height: Get.height/18),
                    InkWell(
                      onTap: (){
                        model.invitefriend();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Invite Friend",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.people,color: ColorRes.grey,size: 27,),
                        ],
                      ),
                    ),
                    Divider(height: Get.height/18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Credit & Couple",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                        Icon(Icons.wallet_giftcard,color: ColorRes.grey,size: 27,),
                      ],
                    ),
                    Divider(height: Get.height/18),
                    InkWell(
                      onTap: (){
                        model.helpcenter();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Help Center",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.help,color: ColorRes.grey,size: 27,),
                        ],
                      ),
                    ),
                    Divider(height: Get.height/18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payent",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                        Icon(Icons.payments_rounded,color: ColorRes.grey,size: 27,),
                      ],
                    ),
                    Divider(height: Get.height/18),
                    InkWell(
                      onTap: (){
                        model.setting();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Setting",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                          Icon(Icons.settings,color: ColorRes.grey,size: 27,),
                        ],
                      ),
                    ),
                    Divider(height: Get.height/18),

                  ],
                ),
              ),


        ],
      ),
    ),
  );
}