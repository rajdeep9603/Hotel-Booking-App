import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'splash_screen_view_model.dart';
import 'splash_widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with TickerProviderStateMixin {
  SplashViewModel? model;
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    model = (model ?? SplashViewModel());
    return Scaffold(
      backgroundColor: ColorRes.bgcolor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: Get.height / 15),
              Center(
                child: Container(
                  width: Get.width / 1.2,
                  height: Get.height / 1.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TabBarView(
                      controller: tabController,
                      children: [
                        tabContainer(title: "Plan your trips",
                            subtitle: "book one of your unique hotel to",
                            subtitle2: "escape the ordinary",
                            image: "assets/images/travel1.png"),
                        tabContainer(title: "Find best deals",
                            subtitle: "find deals for any season from cosy",
                            subtitle2: "country homes to city flats",
                            image: "assets/images/travel2.png"),
                        tabContainer(title: "Best Travelling all time",
                            subtitle: "book one of your unique hotel to",
                            subtitle2: "escape the ordinary",
                            image: "assets/images/travel3.png"),
                      ]),
                ),
              ),
              SizedBox(height: 15),
              TabPageSelector(
                controller: tabController,
                selectedColor: ColorRes.green1,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(45, 5, 45, 10),
                  child: commonBox(
                    onpress: model!.login,
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
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(45, 5, 45, 0),
                  child: commonBox(
                    onpress: model!.createAccount,
                    alignment: Alignment.center,
                    height: Get.height / 12,
                    decoration: BoxDecoration(
                        color: ColorRes.whitexcreate,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [BoxShadow(
                          color: ColorRes.grey,
                          blurRadius: 10.0,
                        ),
                        ]
                    ),
                    child: Text("Create account", style: AppTextStyle(
                        size: 15, textcolor: ColorRes.black),),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}