import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/help_center_ViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpcenter extends StatelessWidget {
  HelpcenterViewModel? model;
  @override
  Widget build(BuildContext context) {
    model=(model ?? HelpcenterViewModel());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: Get.width,
            height: Get.height/3,
            decoration: BoxDecoration(
              color: ColorRes.green1,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height/13,),
                  BackArrow(),
                  SizedBox(height: Get.height/50,),
                  Text("How can we help",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 23),),
                  SizedBox(height: Get.height/50,),
                  commonTextFormFeild(
                    boxdecoration: BoxDecoration(
                      color: ColorRes.white,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    width: Get.width,
                    height: Get.height/13,
                    text: "Search help articles",
                    prefixicon: Icon(Icons.search)
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       ListView.builder(
                         physics: NeverScrollableScrollPhysics(),
                         shrinkWrap: true,
                         itemCount: model!.helptitle.length,
                         itemBuilder: (context,index){
                           return Container(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(model!.helptitle[index],style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 19),),
                                Divider(height: Get.height/15,),
                                Container(
                                  width: Get.width,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: model!.helpsubtitle.length,
                                    itemBuilder: (context,childindex){
                                      return Column(
                                        children: [
                                          InkWell(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(model!.helpsubtitle[childindex]),
                                                Icon(Icons.chevron_right,color: ColorRes.grey,),
                                              ],
                                            ),
                                            onTap: (){
                                              model!.helpdetails();
                                            },
                                          ),

                                          Divider(height: Get.height/20,),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                // Divider(height: Get.height/15,),

                              ],
                            ),
                           );
                         },
                       )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
