
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';

import 'package:client_ui_app/screens/hotel_filter/Filter_screen_ViewModel.dart';
import 'filter_widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Filterscreen extends StatefulWidget {
  @override
  FilterscreenState createState() => FilterscreenState();
}

class FilterscreenState extends State<Filterscreen> {
  FilterViewModel? model;
    @override
    Widget build(BuildContext context) {
      model = (model ?? FilterViewModel());
      return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 15,),
                  InkWell(
                    onTap:model!.oncrossTap,
                      child: Icon(Icons.clear, color: Colors.black,)),
                  SizedBox(height: Get.height / 40,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Filtter", style: AppTextStyle(textcolor: ColorRes
                            .black, size: 20, weight: FontWeight.bold),),
                        SizedBox(height: Get.height / 40,),
                      ],
                    ),
                  ),

                  Container(
                    height: Get.height / 1.5,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price ( for  1  night )", style: AppTextStyle(
                              textcolor: ColorRes.grey,
                              size: 13,
                              weight: FontWeight.normal),),
                          Container(
                            width: Get.width,
                            child: RangeSlider(
                              inactiveColor: ColorRes.grey,
                              values: model!.startingvalues,
                              min: 0,
                              max: 1000,
                              activeColor: ColorRes.green1,
                              divisions: 1000,
                              labels: RangeLabels(
                                '\$${model!.startingvalues.start.round()}',
                                '${model!.startingvalues.end.round()}',

                                //   startingvalues.start.round().toString(),
                                // startingvalues.end.round().toString(),
                              ),
                              onChanged: (RangeValues dragvalue) {
                                setState(() {
                                  model!.startingvalues = dragvalue;
                                  print(model!.startingvalues.start);
                                  print(model!.startingvalues.end);
                                });
                              },


                            ),
                          ),



                          Divider(),
                          SizedBox(height: Get.height / 40,),
                          Text("Popular Filter", style: AppTextStyle(textcolor: ColorRes.grey, size: 14),),

                          SizedBox(height: Get.height / 40,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  checkboxBtn(
                                      text: "Free Breakfast",
                                      defalutvalue:model!.breakfast,
                                      ontouch: (tapvalue){
                                        setState(() {
                                          model!.breakfast = tapvalue!;
                                        });

                                      }
                                  ),
                                  checkboxBtn(
                                    text: "Pool",
                                    defalutvalue:model!.pool,
                                    ontouch: (tapvalue){
                                      setState(() {
                                        model!.pool = tapvalue!;
                                      });

                                    }
                                  ),
                                  checkboxBtn(
                                    text: "Free Wifi",
                                    defalutvalue:model!.wifi,
                                      ontouch: (tapvalue){
                                        setState(() {
                                          model!.wifi = tapvalue!;
                                        });

                                      }
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  checkboxBtn(
                                    text: "Free Parking",
                                    defalutvalue:model!.parking,
                                      ontouch: (tapvalue){
                                        setState(() {
                                          model!.parking = tapvalue!;
                                        });

                                      }
                                  ),
                                  checkboxBtn(
                                    text: "Pet",
                                    defalutvalue:model!.pet,
                                      ontouch: (tapvalue){
                                        setState(() {
                                          model!.pet = tapvalue!;
                                        });

                                      }
                                  ),
                                ],
                              ),


                            ],
                          ),

                          SizedBox(height: Get.height / 40,),


                          Divider(),
                          SizedBox(height: Get.height / 40,),
                          Text("Distance from city center", style: AppTextStyle(
                              textcolor: ColorRes.grey),),
                          SizedBox(height: Get.height / 40,),
                          Text("Less than ${model!.progressvalue.toStringAsFixed(
                              1)}  km",style: AppTextStyle(size: 14,textcolor: ColorRes.black),),

                          Container(
                            width: Get.width,
                            child: CupertinoSlider(
                                thumbColor: ColorRes.green1,
                                activeColor: ColorRes.green1,
                                value: model!.progressvalue,
                                min: 0.0,
                                max: 10.0,
                                onChanged: (tapvalue) {
                                  setState(() {
                                    print(tapvalue);
                                    model!.progressvalue = tapvalue;
                                  });
                                }
                            ),
                          ),

                          SizedBox(height: Get.height/80,),
                          Divider(),
                          SizedBox(height: Get.height / 40,),
                          Text("Type of Accomodation", style: AppTextStyle(
                              textcolor: ColorRes.grey),),
                          SizedBox(height: Get.height / 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("All", style: AppTextStyle(textcolor: ColorRes.black, size: 14),),
                              CupertinoSwitch(
                                activeColor: ColorRes.green1,
                                value: model!.allvalue,
                                onChanged: (value) {
                                  if(model!.allvalue == true){
                                    model!.allvalue = false;
                                    model!.Apartment = false;
                                    model!.home = false;
                                    model!.villa = false;
                                    model!.hotel = false;
                                    model!.resort = false;
                                  }
                                  else{
                                    model!.allvalue = true;
                                    model!.Apartment = true;
                                    model!.home = true;
                                    model!.villa = true;
                                    model!.hotel = true;
                                    model!.resort = true;
                                  }
                                  setState(() {


                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: Get.height / 40,),
                          Divider(),


                          switchBtn(
                            ontap:(tapvalue){
                              setState(() {
                                model!.Apartment=tapvalue;
                              });
                            },
                            text: "Apartment",
                            defaltvalues:model!.Apartment,
                          ),
                          SizedBox(height: Get.height / 40,),
                          switchBtn(
                            ontap:(tapvalue){
                              setState(() {
                                model!.home=tapvalue;
                              });
                            },
                            text: "Home",
                            defaltvalues: model!.home,
                          ),
                          SizedBox(height: Get.height / 40,),
                          switchBtn(
                            ontap:(tapvalue){
                              setState(() {
                                model!.villa=tapvalue;
                              });
                            },
                            text: "Villa",
                            defaltvalues:model!.villa,
                          ),
                          SizedBox(height: Get.height / 40,),
                          switchBtn(
                            ontap:(tapvalue){
                              setState(() {
                                model!.hotel=tapvalue;
                              });
                            },
                            text: "Hotel",
                            defaltvalues:model!.hotel,
                          ),
                          SizedBox(height: Get.height / 40,),
                          switchBtn(
                            ontap:(tapvalue){
                              setState(() {
                                model!.resort=tapvalue;
                              });
                            },
                            text: "Resort",
                            defaltvalues:model!.resort,
                          ),
                          SizedBox(height: Get.height / 40,),

                        ]),
                      ),
                    ),
                  Divider(),
                  commonBox(
                    alignment: Alignment.center,
                    width: Get.width,
                    height: Get.height/12,
                    decoration: BoxDecoration(
                      color: ColorRes.green1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Apply",style: AppTextStyle(),)
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }