import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:client_ui_app/screens/create_account/create_accounr_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget createfullbody({VoidCallback? onpress, VoidCallback? onClick,required createAccountViewModel model}){
  return  Container(
      width: Get.width,
      height:Get.height,
      child: Padding(
        padding: EdgeInsets.only(left: 25,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height/7),
            Text("Sign up",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 23),),
            SizedBox(height: Get.height/35),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
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
                     Container(
                       child: Form(
                         key:model.formKey,
                         child: Column(
                           children: [
                             commonTextFormFeild(
                               Focusnode: model.first,
                               // textfeilddecoration:InputDecoration(
                               //   border: InputBorder.none,
                               // ),
                               textcontroller:model.firstcontroller,
                               text: "First name",
                               validator: (value ){
                                return model.commonvalidator(value!,"Enter First Name");
                               },
                               // width: Get.width,
                               // height: Get.height/2,
                               boxdecoration: BoxDecoration(
                                 color: ColorRes.white,
                                 boxShadow: [BoxShadow(offset: Offset(0.5,0.5),blurRadius: 2,color: Colors.grey)],
                                 borderRadius: BorderRadius.circular(30),
                               ),

                             ),
                             SizedBox(height: Get.height/35),
                             commonTextFormFeild(
                               Focusnode: model.last,
                               textcontroller:model.Lastcontroller,
                               validator: (value ){
                                 return model.commonvalidator(value!,"Enter Last Name");
                               },
                               // width: Get.width,
                               // height: Get.height/2,
                               boxdecoration: BoxDecoration(
                                 color: ColorRes.white,
                                 boxShadow: [BoxShadow(offset: Offset(0,0),blurRadius:0.5,spreadRadius:0.5,color: Colors.grey)],
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               text: "Last name",
                             ),
                             SizedBox(height: Get.height/35),
                             commonTextFormFeild(
                               Focusnode: model.email,
                               textcontroller:model.emailcontroller,
                               validator: (value ){
                                 return model.commonvalidator(value!,"Enter Email");
                               },
                               // width: Get.width,
                               // height: Get.height/2,
                               boxdecoration: BoxDecoration(
                                 color: ColorRes.white,
                                 boxShadow: [BoxShadow(offset: Offset(0,0),blurRadius:0.5,spreadRadius:0.5,color: Colors.grey)],
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               text: "Your email",
                             ),
                             SizedBox(height: Get.height/35),
                             commonTextFormFeild(
                               Focusnode: model.password,
                               textcontroller:model.Passwordcontroller,
                               validator: (value ){
                                 return model.commonvalidator(value!,"Enter Password");
                               },
                               // width: Get.width,
                               // height: Get.height/2,
                               boxdecoration: BoxDecoration(
                                 color: ColorRes.white,
                                 boxShadow: [BoxShadow(offset: Offset(0,0),blurRadius:0.5,spreadRadius:0.5,color: Colors.grey)],
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               text: "Password",
                             ),
                           ],
                         ),
                       ),
                     ),
                      SizedBox(height: Get.height/35),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot your Password?",style: AppTextStyle(textcolor: ColorRes.grey,size: 12),),
                      ),
                      SizedBox(height: Get.height/35),
                      commonBox(
                        onpress: onClick,
                        alignment: Alignment.center,
                        height: Get.height / 12,
                        decoration: BoxDecoration(
                            color: ColorRes.green1,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(color: ColorRes.grey, blurRadius: 5.0)
                            ]
                        ),
                        child: Text("Sign up", style: AppTextStyle(
                            size: 15, textcolor: ColorRes.white),),
                      ),
                      SizedBox(height: Get.height/30),
                      Align(
                        child: Text("By Signing up,you agreed with our terms of",style: AppTextStyle(textcolor: ColorRes.grey,size: 13),),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Services and privacy policy",style: AppTextStyle(textcolor: ColorRes.grey,size: 13),),
                      ),
                      SizedBox(height: Get.height/30),

                      InkWell(
                        onTap: onpress,
                        child: RichText(text: TextSpan(
                            children:[TextSpan(text: "Already have account? Log in ",style: AppTextStyle(textcolor: Colors.grey,size: 13)),
                            TextSpan(text: "Login",style:AppTextStyle(textcolor: ColorRes.green1,size: 15,weight: FontWeight.bold)),]
                        ),
                        ),
                      ),
                      SizedBox(height: Get.height/25),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
  );
}