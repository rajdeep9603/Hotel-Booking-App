import 'package:client_ui_app/change_password_Viewmodel.dart';
import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textform_feild.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Changepassword extends StatelessWidget {
  ChangepasswordViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model ?? ChangepasswordViewModel());
    return Scaffold(
      backgroundColor: ColorRes.white1,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Form(
                key: model!.formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height/15,),
                    BackArrow(),
                    SizedBox(height: Get.height/40,),
                    Text("Change Password",style: AppTextStyle(textcolor: ColorRes.black,size: 22,weight: FontWeight.bold),),
                    SizedBox(height: Get.height/40,),
                    Text("Enter your new password and confirm your ",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,weight: FontWeight.normal),),
                    Text("password",style: AppTextStyle(textcolor: ColorRes.grey,size: 15,weight: FontWeight.normal),),
                    SizedBox(height: Get.height/40,),

                    commonTextFormFeild(
                      validator: (value){
                        return model!.commonvalidator(value!,"Enter New Password");
                      },
                      width: Get.width,
                      height: Get.height/12,
                      text: "New Password",
                      boxdecoration:BoxDecoration(
                        color: ColorRes.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),

                    SizedBox(height: Get.height/40,),

                    commonTextFormFeild(
                      validator: (value){
                       return model!.commonvalidator(value!,"Enter Confirm Password");
                      },
                      width: Get.width,
                      height: Get.height/12,
                      text: "Confirm Password",
                      boxdecoration:BoxDecoration(
                        color: ColorRes.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),

                    SizedBox(height: Get.height/40,),
                    commonBox(
                      onpress:(){
                        model!.apply();
                      },
                      width: Get.width,
                      height: Get.height/12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorRes.green1,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text("Apply",style: AppTextStyle(textcolor: ColorRes.white),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
