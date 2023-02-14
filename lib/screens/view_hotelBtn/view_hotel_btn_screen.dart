import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/string_res.dart';
import 'view_hotel_btn_ViewModel.dart';
import 'view_hotel_btn_widgets/view_hotelbtn_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Viewhotelbtn extends StatefulWidget {
  @override
  _ViewhotelbtnState createState() => _ViewhotelbtnState();
}

class _ViewhotelbtnState extends State<Viewhotelbtn> {
  ViewhotelbtnViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model??ViewhotelbtnViewModel());
    return Scaffold(
      backgroundColor: ColorRes.white1,
      appBar:AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: BackArrow(),
        ),
        backgroundColor: ColorRes.white1,
        elevation: 0.0,
        title:Center(
          child: Text(StringRes.exploretitle,style: AppTextStyle(textcolor: ColorRes.black,size: 20,weight: FontWeight.bold),),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border,color: ColorRes.black,)),
          IconButton(
              onPressed: (){
                setState(() {
                  model!.showmenu=!(model!.showmenu);
                });
              },
            icon: Icon(model!.showmenu ? Icons.menu_outlined : Icons.map,color:ColorRes.black),
          ),
        ],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      commonTextFormFeild(
                        width:Get.width/1.45,
                        height: Get.height/12,
                        boxdecoration:BoxDecoration(
                        color: ColorRes.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                        textfeilddecoration: InputDecoration(
                          hintText: "London....",hintStyle: AppTextStyle(textcolor: ColorRes.grey,size:17),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        ),
                      SizedBox(width: Get.width/22,),
                      CircleAvatar(
                        backgroundColor: ColorRes.green1,
                        radius: 25,
                        child: Icon(Icons.search,color: ColorRes.white,size: 30,),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height/30,),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Choose Date",style: AppTextStyle(textcolor: ColorRes.grey,size: 15),),
                          SizedBox(height: Get.height/100,),
                          Text("15,  Jul  -  20,  Jul",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                        ],
                      ),
                      SizedBox(width: Get.width/8),
                      Container(
                        width: 1,
                        height: 40,
                        color: ColorRes.grey,
                      ),
                      SizedBox(width: Get.width/35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Choose Date",style: AppTextStyle(textcolor: ColorRes.grey,size: 15),),
                          SizedBox(height: Get.height/100,),
                          Text("1 Room 2 People",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("530  Hotel Found",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                    Row(
                      children: [
                        Text("Filtter",style: AppTextStyle(textcolor: ColorRes.black,size: 15),),
                        SizedBox(width: Get.width/70,),
                        InkWell(
                          onTap:model!.fliterclick,
                            child: Icon(Icons.filter_list_rounded,color: ColorRes.green1,)),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: Get.height/22,),
              model!.showmenu ? viewhotelbody(model!) : viewhotelmap(model!),
            ],
          ),
        ],
      ),
    );
  }
}
