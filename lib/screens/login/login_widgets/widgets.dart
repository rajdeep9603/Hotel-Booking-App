import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:client_ui_app/screens/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Widget fullbody({VoidCallback? onpress,LoginViewModel? model}){
  return  Container(
      width: Get.width,
      height:Get.height,
      child: Padding(
        padding: EdgeInsets.only(left: 25,right: 25),
        child: Form(
          key:model!.formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height/6),
              Text("Login",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 23),),
              SizedBox(height: Get.height/35),
              Row(
                children: [
                  Flexible(
                    child: commonBox(
                      decoration: BoxDecoration(
                        color: ColorRes.facebook,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      height: Get.height/12,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/fb.png"),
                              ),
                            ),
                          ),
                          Center(child: Text("Facebook",style: AppTextStyle(textcolor: ColorRes.white,weight:FontWeight.bold),)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width/13),
                  Flexible(
                    child: commonBox(
                      boxcolor: ColorRes.twitter,
                      height: Get.height/12,
                      decoration: BoxDecoration(
                        color: ColorRes.twitter,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/twitter.png"),
                              ),
                            ),
                          ),
                          Text("Twitter",style: AppTextStyle(textcolor: ColorRes.white,weight:FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height/40),
              Center(child: Text("or log in with email",style: AppTextStyle(textcolor: ColorRes.grey,size: 12),),),
              SizedBox(height: Get.height/40),
              commonTextFormFeild(
                text: "Enter Email",
                Focusnode: model.email,
                validator: (value){
                 return model.commonvalidator(value!,"Enter Email");
                },
                textcontroller: model.emailcontroller,
                boxdecoration: BoxDecoration(
                  color: ColorRes.white,
                  boxShadow: [BoxShadow(offset: Offset(0.5,0.5),blurRadius: 2,color: Colors.grey)],
                  borderRadius: BorderRadius.circular(30),
                ),

              ),
              SizedBox(height: Get.height/35),
              commonTextFormFeild(
                text:"Enter Password" ,
                Focusnode: model.password,
                validator: (value){
                  return  model.commonvalidator(value!,"Enter Passsword");
                },
                textcontroller: model.passwordcontroller,
                boxdecoration: BoxDecoration(
                  color: ColorRes.white,
                  boxShadow: [BoxShadow(offset: Offset(0,0),blurRadius:0.5,spreadRadius:0.5,color: Colors.grey)],
                  borderRadius: BorderRadius.circular(30),
                ),

              ),
              SizedBox(height: Get.height/35),
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot your Password?",style: AppTextStyle(textcolor: ColorRes.grey,size: 12),),
              ),
              SizedBox(height: Get.height/35),
              commonBox(
                onpress: onpress,
                alignment: Alignment.center,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: ColorRes.green1,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: ColorRes.grey, blurRadius: 5.0)
                    ]
                ),
                child: Text("Login", style: AppTextStyle(
                    size: 15, textcolor: ColorRes.white),),
              ),
            ],
          ),
        ),
      )
  );
}