
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import '../view_hotel_btn_ViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget viewhotelbody(ViewhotelbtnViewModel model){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal:15),
    child: Container(
      width: Get.width,
      height:Get.height/2.2,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:model.hotels.length,
        scrollDirection:Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => model.hotelclick(model.hoteltitle[index]),
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional(0.9,-0.8),
                  children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            width:Get.width,
                            height: Get.height/5,
                            child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                                child: Image.asset(model.hotels[index],fit: BoxFit.fill,)),
                          ),
                          SizedBox(height: Get.height/45,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(model.hoteltitle[index],style: AppTextStyle(textcolor: ColorRes.black,size: 18,weight: FontWeight.bold),),
                                    Text("\$${model.rate[index]}",style: AppTextStyle(textcolor: ColorRes.black,size: 18,weight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: Get.height/80,),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: Get.width/200),
                                    Text("Wembley,  London ",style: AppTextStyle(textcolor: ColorRes.grey,size: 13,weight: FontWeight.normal),),
                                    Icon(Icons.location_on_outlined,color: ColorRes.green1,size: 15,),
                                    Text("2.0 km to... ",style: AppTextStyle(textcolor: ColorRes.grey,size: 13,weight: FontWeight.normal),),
                                    SizedBox(width: Get.width/20),
                                    Text("/per night",style: AppTextStyle(textcolor: ColorRes.grey,size: 13,weight: FontWeight.normal),),
                                  ],
                                ),
                                SizedBox(height: Get.height/80,),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                    Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                    Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                    Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                    Icon(Icons.star_half,color: ColorRes.green1,size: 18,),
                                    SizedBox(width: Get.width/80,),
                                    Text("${model.review[index].toString()} Reviews",style:AppTextStyle(textcolor: ColorRes.grey,size: 12,),),
                                  ],
                                ),
                                SizedBox(height: Get.height/80,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.favorite_border,color: ColorRes.green1,),
                      radius: 20,
                      backgroundColor: ColorRes.white,
                    ),
                  ],
                ),
                SizedBox(height: Get.height/40,),
              ],
            ),
          );
        },
      ),
    ),
  );
}

Widget viewhotelmap(ViewhotelbtnViewModel model){
  return Stack(
    alignment: AlignmentDirectional(0,0.8),
    children: [
      Container(
        width: Get.width,
        height: Get.height/1.96,
        // height: Get.height,
        child:Image.asset("assets/images/map.png",fit: BoxFit.fill,),
      ),


      Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Container(
          width: Get.width,
          height: Get.height/4.5,
          // color: Colors.black,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.hotels.length,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  shadowColor: ColorRes.black,
                  elevation: 0.5,
                  // margin: EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    height: Get.height/5,
                    child:Row(
                      children: [
                        Container(
                          height: Get.height/4.5,
                          width: Get.width/3,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft:Radius.circular(20.0),
                              ),
                              child: Image.asset(model.hotels[index].toString(),fit: BoxFit.fill,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(model.hoteltitle[index],style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.w900,size:15),),
                              SizedBox(height: Get.height/300,),
                              Text("Wembly, London",style: AppTextStyle(textcolor: ColorRes.grey,size: 12,),),
                              SizedBox(height: Get.height/30,),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: ColorRes.green1,size: 20,),
                                  SizedBox(width:3),
                                  Text(model.km[index],style: AppTextStyle(textcolor: ColorRes.grey,size: 12,),),
                                  SizedBox(width:Get.width/10),
                                  Text("\$${model.rate[index]}",style: AppTextStyle(textcolor: ColorRes.black,weight:FontWeight.bold,size:20),),
                                ],
                              ),
                              SizedBox(height: Get.height/300,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                  Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                  Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                  Icon(Icons.star,color: ColorRes.green1,size: 18,),
                                  Icon(Icons.star_half,color: ColorRes.green1,size: 18,),
                                  SizedBox(width: Get.width/12,),
                                  Text("/per night",style:AppTextStyle(textcolor: ColorRes.grey,size: 12,),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              );
            },
          ),
        ),
      )
    ],
  );
}