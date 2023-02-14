import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpcenterdetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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

                Text("How do i cancle my rooms reservation",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 22),),

              ],
            ),
           ),
            SizedBox(height: Get.height/50,),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("you can cancle a reservation any time before Or during your trip.TO cancle a reservation",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/15,),
                      Text("Go to Trips and choose your trip Click Your home reservation CLick Modify reservation",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/15,),
                      Text("You'll be taken to a new page where you either change or cancle your reservation. CLick the Next button under Cancle reservation to start the cancellation process.",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/15,),
                      Text("if you cancle,your refund will be determined by your host'r cancellation policy. we wil show your refund breakdown before you finalize the cancellation",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/15,),
                      Text("Geve feedback",style: AppTextStyle(textcolor: ColorRes.green1),),
                      Divider(height: Get.height/20,),
                    Text("Related articles",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 17),),
                      SizedBox(height: Get.height/15,),
                      Text("Can i change a reservation as a guest",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/12,),

                      Text("How do i cancle a reservation request?",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/12,),

                      Text("What is the Resolution Center?",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,letterspacing:1),),
                      SizedBox(height: Get.height/12,),

                    
                    
                    
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
