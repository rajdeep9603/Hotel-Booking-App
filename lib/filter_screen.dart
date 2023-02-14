import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchscreen extends StatefulWidget {
  @override
  _SearchscreenState createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white1,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height/13,),
                  Icon(Icons.clear),
                  SizedBox(height: Get.height/40,),
                  Text("Search",style: AppTextStyle(textcolor: ColorRes.black,size: 24,weight:FontWeight.bold),),
                ],
              ),
            ),
          ),

          SizedBox(height: Get.height/40,),

          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      commonTextFormFeild(
                        // margin: EdgeInsets.symmetric(horizontal: 25,vertical: 0),
                        height: Get.height/12,
                        width: Get.width,
                        Alignment: Alignment.topCenter,
                        boxdecoration: BoxDecoration(
                          color: ColorRes.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        textfeilddecoration: InputDecoration(
                          hintText: "Where are you going?",hintStyle: AppTextStyle(textcolor: ColorRes.grey,size: 16),
                          prefixIcon: Icon(Icons.search,color: ColorRes.green1,size: 28,),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),

                      Container(
                        width: Get.width,
                        height:Get.height/4,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context,index){
                            return Column(
                              children: [
                                SizedBox(height: Get.height/50,),
                                CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/hotel1.jpg"),
                                  radius: 40,
                                ),
                                SizedBox(width: Get.width/3.8,),
                                Text("hello"),
                              ],
                            );
                          },
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("last Searches",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold),),
                          Text("Clear all",style: AppTextStyle(textcolor: ColorRes.green1,weight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
