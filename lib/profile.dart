import 'package:client_ui_app/Filter_screen_ViewModel.dart';
import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  String image;
  Profile({required this.image});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white1,
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height/15,),
                  BackArrow(),
                  SizedBox(height: Get.height/40,),
                  Text("Edit Profile",style: AppTextStyle(textcolor: ColorRes.black,size: 18,weight: FontWeight.bold),),
                  SizedBox(height: Get.height/60,),
                ],
              ),
            ),
          ),
          Container(
            child:Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Stack(
                    children: [
                     CircleAvatar(
                       backgroundImage: AssetImage(widget.image),
                       radius: 70,
                     ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: ColorRes.green1,
                          child: Icon(Icons.camera_alt ,color: ColorRes.white,size: 28,))
                    ],
                      alignment: AlignmentDirectional(1,0.9),
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      child: Container(
                        width: Get.width,
                        height: Get.height/2,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: profiletitle.length,
                          itemBuilder: (context,index){
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(profiletitle[index],style: AppTextStyle(textcolor: ColorRes.grey,size: 16),),
                                    Text(profiledetail[index],style: AppTextStyle(textcolor: ColorRes.black,size: 16),),

                                  ],
                                ),
                                Divider(height: Get.height/20,)
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
