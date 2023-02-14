import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/screens/hotels/hotel_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget alltabs(controller){
  return TabBar(
    // isScrollable: true,
    physics: NeverScrollableScrollPhysics(),
    // labelStyle: TextStyle(color: Colors.white),
    controller: controller,
    indicatorColor: Colors.transparent,
    unselectedLabelColor:ColorRes.grey,
    labelColor:ColorRes.green1,
    labelStyle: AppTextStyle(size: 15,weight: FontWeight.bold),
    tabs: [
      Tab(text: "Upcoming",),
      Tab(text: "Finished",),
      Tab(text: "Favorites",),
    ],
  );
}

Widget alltabbars(controller,HotelscreenViewModel model){
  return Container(
    width: Get.width,
    height: Get.height/1.57,
    child: new TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      children: [
        ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount:model.hotels.length,
          scrollDirection:Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Center(child: Text(model.roompeople[index],style: AppTextStyle(textcolor: ColorRes.black,size: 14,weight: FontWeight.normal),)),
                SizedBox(height: Get.height/45,),
                Stack(
                  alignment: AlignmentDirectional(0.9,-0.8),
                  children: [
                    Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            width:Get.width,
                            height: Get.height/5,
                            child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
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
                SizedBox(height: Get.height/15,),
              ],
            );
          },
        ),

        ListView.builder(
          itemCount: model.hotels.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (index % 2 == 0)?
                  Container(
                    width:Get.width/2.4,
                    height: Get.height/4,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft:Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        child: Image.asset(model.hotels[index],fit: BoxFit.fill,)),
                  ):
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(model.hoteltitle[index],style: AppTextStyle(textcolor:ColorRes.black,size: 16,weight: FontWeight.bold),),
                          margin: EdgeInsets.only(left:4),),
                        Container(margin: EdgeInsets.only(left:4),
                            child: Text("Wembley, London",style: AppTextStyle(textcolor:ColorRes.grey,size: 15),)),
                        Container(margin:EdgeInsets.only(left:4),
                            child: Text(model.date[index],style: AppTextStyle(textcolor:ColorRes.black,size: 12),)),
                        Container(margin: EdgeInsets.only(left:4),
                            child: Text(model.people[index],style: AppTextStyle(textcolor:ColorRes.black,size: 12),)),
                        SizedBox(height: Get.height/70,),

                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: ColorRes.green1,size: 18,),
                            Text(model.km[index],style: AppTextStyle(textcolor:ColorRes.grey,size: 12),),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star_half,color: ColorRes.green1,size: 18,),
                          ],
                        ),

                        Container(margin:EdgeInsets.only(left:4),
                            child: Text("\$${model.rate[index]}",style: AppTextStyle(textcolor: ColorRes.black,size: 16,weight: FontWeight.bold),)),

                      ],
                    ),
                  ),

                  (index % 2 ==0)?Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(model.hoteltitle[index],style: AppTextStyle(textcolor:ColorRes.black,size: 16,weight: FontWeight.bold),),
                          margin: EdgeInsets.only(left:4),),
                        Container(margin: EdgeInsets.only(left:4),
                            child: Text("Wembley, London",style: AppTextStyle(textcolor:ColorRes.grey,size: 15),)),
                        Container(margin:EdgeInsets.only(left:4),
                            child: Text(model.date[index],style: AppTextStyle(textcolor:ColorRes.black,size: 12),)),
                        Container(margin: EdgeInsets.only(left:1),
                            child: Text(model.people[index],style: AppTextStyle(textcolor:ColorRes.black,size: 12),)),
                        SizedBox(height: Get.height/70,),

                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: ColorRes.green1,size: 18,),
                            Text(model.km[index],style: AppTextStyle(textcolor:ColorRes.grey,size: 12),),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star,color: ColorRes.green1,size: 18,),
                            Icon(Icons.star_half,color: ColorRes.green1,size: 18,),
                          ],
                        ),

                        Container(margin:EdgeInsets.only(left:4),
                            child: Text("\$${model.rate[index]}",style: AppTextStyle(textcolor: ColorRes.black,size: 16,weight: FontWeight.bold),)),

                      ],
                    ),
                  ) :Container(
                    width:Get.width/2.3  ,
                    height: Get.height/4,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft:Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        child: Image.asset(model.hotels[index],fit: BoxFit.fill,)),
                  ),
                ],
              ),
            );
          },
        ),

        ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: model.hotels.length,
          itemBuilder: (context,index){
            return Card(
              shadowColor: ColorRes.black,
              elevation: 0.5,
              margin: EdgeInsets.only(bottom: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              child: Container(
                // margin: EdgeInsets.only(bottom: 20),
                height: Get.height/5,
                child:Row(
                  children: [
                    Container(
                      height: Get.height/5,
                      width: Get.width/3,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft:Radius.circular(20.0),
                          ),
                          child: Image.asset(model.hotels[index].toString(),fit: BoxFit.fill,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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

            );
          },
        ),
      ],
    ),
  );
}