import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:client_ui_app/invite_friend_ViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Invitefriend extends StatelessWidget {
  InvitefriendViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model ?? InvitefriendViewModel());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height/15,),
            BackArrow(),

            SizedBox(height: Get.height/20,),
            Container(
              margin: EdgeInsets.only(left:Get.width/12,right:Get.width/12),
              width: Get.width,
              height: Get.height/2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/share1.jpg",)
                )
              ),
            ),
            SizedBox(height: Get.height/40,),
            Center(child: Text("Invite your Friend",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),)),
            SizedBox(height: Get.height/40,),
            Text("are you one of those who makes everything ",style: AppTextStyle(textcolor: ColorRes.black,size: 15,weight: FontWeight.normal),),
            Center(child: Text("at the last moment ",style: AppTextStyle(textcolor: ColorRes.black,size: 15,weight: FontWeight.normal),)),

            SizedBox(height: Get.height/10,),


           Center(
             child: commonBox(
               onpress: (){
                 model!.shareBtn(context);
               },
               width: Get.width/3,
               height: Get.height/12,
               decoration: BoxDecoration(
                 color: ColorRes.green1,
                 borderRadius: BorderRadius.circular(22),
               ),
               child: Row(
               children: [
                 SizedBox(width: Get.width/15,),
                 Icon(Icons.share,color: ColorRes.white,size: 20,),
                 SizedBox(width: Get.width/70,),
                 Text("Share",style: AppTextStyle(textcolor: ColorRes.white),)
               ],
               ),
             ),
           ),
            
            
          ],
        ),
      ),
    );
  }
}
