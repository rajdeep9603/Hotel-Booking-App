import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:client_ui_app/screens/hotels/hotel_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

Widget fullexplorebody(HotelscreenViewModel model){
return Stack(
  alignment: AlignmentDirectional(0,-0.8),
  children: [
    new CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Container(),
            expandedHeight:Get.height/1.3,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                // title: Text("Collapsing Toolbar",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 16.0,
                //     )),
                background: Stack(
                  alignment: AlignmentDirectional(-0.8,0.8),
                  children: [
                    Swiper(
                      itemCount: model.appbarimages.length,
                      itemBuilder: (BuildContext context, int index) => Stack(
                        alignment: AlignmentDirectional(-0.7,0.4),
                        children: [
                          Container(
                            width:Get.width,
                            height:Get.height/1.1,
                            child: Image.asset(
                              model.appbarimages[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(model.appbartitle[index],style: AppTextStyle(textcolor: ColorRes.white,size: 25,weight: FontWeight.bold),),
                              Text("Extraordinary five-star",style: AppTextStyle(textcolor: ColorRes.white,size: 15,weight: FontWeight.normal),),
                              Text("outdoor activities",style: AppTextStyle(textcolor: ColorRes.white,size: 15,weight: FontWeight.normal),),
                            ],
                          ),
                        ],
                      ),
                      autoplay: true,
                    ),
                    commonBox(
                      onpress: model.viewhotelBtn,
                        alignment: Alignment.center,
                        width: Get.width/2.8,
                        height: Get.height/11,
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text("View Hotel",style: AppTextStyle(textcolor: ColorRes.white,weight: FontWeight.normal),)
                    ),
                  ],
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              // width: 200,
              // height: 500,
                color: ColorRes.white1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height/25),
                        Text("Popular Destination",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold),),
                        SizedBox(height: Get.height/28),
                        Container(
                          // margin: EdgeInsets.all(10),
                          height: Get.height/4,
                          // color: Colors.red,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: model.cityimages.length,
                            itemBuilder: (context,index){
                              return Stack(
                                alignment: AlignmentDirectional(-0.9,-0.9),
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: Get.width,
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.circular(20),
                                        child: Image.asset(model.cityimages[index].toString(),fit: BoxFit.fill,)),
                                  ),
                                  Text(model.citytitle[index],style:AppTextStyle(weight: FontWeight.bold,size:25),),
                                ],
                              );
                            },

                          ),
                        ),
                        SizedBox(height: Get.height/28),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Best Deals",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold),),
                            Row(
                              children: [
                                Text("view all",style: AppTextStyle(textcolor: ColorRes.green1,weight: FontWeight.bold),),
                                Icon(Icons.arrow_forward,color: ColorRes.green1,),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height/500),
                        Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: model.hotels.length,
                            itemBuilder: (context,index){
                              return Card(
                                elevation: 6,
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
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ),
          // SliverToBoxAdapter(
          //   child: ,
          // )
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //           (context, index) => Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 75,
          //           color: Colors.black12,
          //         ),
          //       ),
          //       childCount: 10),
          // ),
        ]
    ),
    commonTextFormFeild(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 0),
      height: Get.height/13,
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
  ],
);
}



