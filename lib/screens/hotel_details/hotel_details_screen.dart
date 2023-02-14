import 'package:carousel_slider/carousel_slider.dart';
import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/common/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class  HoteldDetail extends StatefulWidget {
String hoteltitle;
HoteldDetail({required this.hoteltitle});
  @override
  _HomePagenewState createState() => _HomePagenewState();
}

class _HomePagenewState extends State<HoteldDetail> {
  int current1= 0;
  int current2 = 0;
  int current3 = 0;
  int current4 = 0;
  int current5 = 0;


  late CarouselController controller;
  List<String> room1 = ["assets/images/room1.1.jpg","assets/images/room1.2.jpg","assets/images/room1.3.jpg"];
  List<String> room2 = ["assets/images/room2.1.jpg","assets/images/room2.2.jpg","assets/images/room2.3.jpg"];
  List<String> room3 = ["assets/images/room3.1.jpg","assets/images/room3.2.jpg","assets/images/room3.3.jpg"];
  List<String> room4 = ["assets/images/room4.1.jpg","assets/images/room4.2.jpg","assets/images/room4.3.jpg"];
  List<String> room5 = ["assets/images/room5.1.jpg","assets/images/room5.2.jpg","assets/images/room5.3.jpg"];

  bool isSelected = false;
  List<Widget> room1listgenrate() {
    return room1.map(
          (element) => Image.asset(
        element,
        fit: BoxFit.cover,
        width: Get.width,
      ),
    ).toList();
  }

  List<Widget> room2listgenrate(){
    return room2.map((element) => Image.asset(element,fit: BoxFit.cover,width: Get.width,)).toList();
  }

  List<Widget> room3listgenrate(){
    return room3.map((element) => Image.asset(element,fit: BoxFit.cover,width: Get.width,)).toList();
  }

  List<Widget> room4listgenrate(){
    return room4.map((element) => Image.asset(element,fit: BoxFit.cover,width: Get.width,)).toList();
  }

  List<Widget> room5listgenrate(){
    return room5.map((element) => Image.asset(element,fit: BoxFit.cover,width: Get.width,)).toList();
  }

  var room1list;
  var room2list;
  var room3list;
  var room4list;
  var room5list;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = CarouselController();
    room1list = room1listgenrate();
    room2list = room2listgenrate();
    room3list = room3listgenrate();
    room4list = room4listgenrate();
    room5list = room5listgenrate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.white1,
        title: Text(widget.hoteltitle,style:AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 21),),
        leading:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: BackArrow(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: ColorRes.black,
            ),
            onPressed: () {

            },
          ),
        ],
      ),
      backgroundColor: ColorRes.white1,
      body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment:AlignmentDirectional(0,1),
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/3,
                  child: CarouselSlider(
                    items: room1list,
                    options: CarouselOptions(
                        scrollPhysics: PageScrollPhysics(),
                        viewportFraction: 1,
                        // enlargeCenterPage: true,
                        aspectRatio: 10 / 6.3,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          print("Hello page change$index");

                          setState(() {
                            current1 = index;
                          });
                        }),
                    // carouselController: controller,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(left: ),
                  width: Get.width/3.5,
                  height: Get.height/25,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: room1list.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(left: 3),
                        height: Get.height/10,
                        width: Get.width/28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color:current1 == index ? ColorRes.green1 : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            // SizedBox(height: Get.height/45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deluxe Room",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                      commonBox(
                        width: Get.width/3,
                        height: Get.height/15,
                        alignment: Alignment.center,
                        child: Text("Book now",style: AppTextStyle(textcolor: ColorRes.black,size: 16),),
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$180",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 18),),
                      Text("/per night",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.normal,size: 14),),
                    ],
                  ),

                  Row(
                    children: [
                      Text("sleeps 2 people + 2 children ",style: AppTextStyle(textcolor: ColorRes.grey,weight: FontWeight.bold,size: 14),),
                      SizedBox(width: Get.width/10,),
                      Text("more details",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 14),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: ColorRes.black,),
                    ],
                  ),
                ],
              ),
            ),




            Stack(
              alignment:AlignmentDirectional(0,1),
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/3,
                  child: CarouselSlider(
                    items: room2list,
                    options: CarouselOptions(
                        scrollPhysics: PageScrollPhysics(),
                        viewportFraction: 1,
                        // enlargeCenterPage: true,
                        aspectRatio: 10 / 6.3,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          print("Hello page change$index");

                          setState(() {
                            current2 = index;
                          });
                        }),
                    // carouselController: controller,
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(left: ),
                  width: Get.width/3.5,
                  height: Get.height/25,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: room2list.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(left: 3),
                        height: Get.height/10,
                        width: Get.width/28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color:current2 == index ? ColorRes.green1 : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deluxe Room",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                      commonBox(
                        width: Get.width/3,
                        height: Get.height/15,
                        alignment: Alignment.center,
                        child: Text("Book now",style: AppTextStyle(textcolor: ColorRes.black,size: 16),),
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$180",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 18),),
                      Text("/per night",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.normal,size: 14),),
                    ],
                  ),

                  Row(
                    children: [
                      Text("sleeps 2 people + 2 children ",style: AppTextStyle(textcolor: ColorRes.grey,weight: FontWeight.bold,size: 14),),
                      SizedBox(width: Get.width/10,),
                      Text("more details",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 14),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: ColorRes.black,),
                    ],
                  ),
                ],
              ),
            ),

            Stack(
              alignment:AlignmentDirectional(0,1),
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/3,
                  child: CarouselSlider(
                    items: room3list,
                    options: CarouselOptions(
                        scrollPhysics: PageScrollPhysics(),
                        viewportFraction: 1,
                        // enlargeCenterPage: true,
                        aspectRatio: 10 / 6.3,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          print("Hello page change$index");

                          setState(() {
                            current3 = index;
                          });
                        }),
                    // carouselController: controller,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(left: ),
                  width: Get.width/3.5,
                  height: Get.height/25,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: room3list.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(left: 3),
                        height: Get.height/10,
                        width: Get.width/28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color:current3 == index ? ColorRes.green1 : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deluxe Room",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                      commonBox(
                        width: Get.width/3,
                        height: Get.height/15,
                        alignment: Alignment.center,
                        child: Text("Book now",style: AppTextStyle(textcolor: ColorRes.black,size: 16),),
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$180",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 18),),
                      Text("/per night",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.normal,size: 14),),
                    ],
                  ),

                  Row(
                    children: [
                      Text("sleeps 2 people + 2 children ",style: AppTextStyle(textcolor: ColorRes.grey,weight: FontWeight.bold,size: 14),),
                      SizedBox(width: Get.width/10,),
                      Text("more details",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 14),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: ColorRes.black,),
                    ],
                  ),
                ],
              ),
            ),

            Stack(
              alignment:AlignmentDirectional(0,1),
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/3,
                  child: CarouselSlider(
                    items: room4list,
                    options: CarouselOptions(
                        scrollPhysics: PageScrollPhysics(),
                        viewportFraction: 1,
                        // enlargeCenterPage: true,
                        aspectRatio: 10 / 6.3,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          print("Hello page change$index");

                          setState(() {
                            current4 = index;
                          });
                        }),
                    // carouselController: controller,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(left: ),
                  width: Get.width/3.5,
                  height: Get.height/25,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: room4list.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(left: 3),
                        height: Get.height/10,
                        width: Get.width/28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color:current4 == index ? ColorRes.green1 : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deluxe Room",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                      commonBox(
                        width: Get.width/3,
                        height: Get.height/15,
                        alignment: Alignment.center,
                        child: Text("Book now",style: AppTextStyle(textcolor: ColorRes.black,size: 16),),
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$180",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 18),),
                      Text("/per night",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.normal,size: 14),),
                    ],
                  ),

                  Row(
                    children: [
                      Text("sleeps 2 people + 2 children ",style: AppTextStyle(textcolor: ColorRes.grey,weight: FontWeight.bold,size: 14),),
                      SizedBox(width: Get.width/10,),
                      Text("more details",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 14),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: ColorRes.black,),
                    ],
                  ),
                ],
              ),
            ),

            Stack(
              alignment:AlignmentDirectional(0,1),
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/3,
                  child: CarouselSlider(
                    items: room5list,
                    options: CarouselOptions(
                        scrollPhysics: PageScrollPhysics(),
                        viewportFraction: 1,
                        // enlargeCenterPage: true,
                        aspectRatio: 10 / 6.3,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          print("Hello page change$index");

                          setState(() {
                            current5 = index;
                          });
                        }),
                    // carouselController: controller,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(left: ),
                  width: Get.width/3.5,
                  height: Get.height/25,
                  child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: room5list.length,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.only(left: 3),
                        height: Get.height/10,
                        width: Get.width/28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color:current5 == index ? ColorRes.green1 : Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Deluxe Room",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 20),),
                      commonBox(
                        width: Get.width/3,
                        height: Get.height/15,
                        alignment: Alignment.center,
                        child: Text("Book now",style: AppTextStyle(textcolor: ColorRes.black,size: 16),),
                        decoration: BoxDecoration(
                          color: ColorRes.green1,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\$180",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 18),),
                      Text("/per night",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.normal,size: 14),),
                    ],
                  ),

                  Row(
                    children: [
                      Text("sleeps 2 people + 2 children ",style: AppTextStyle(textcolor: ColorRes.grey,weight: FontWeight.bold,size: 14),),
                      SizedBox(width: Get.width/10,),
                      Text("more details",style: AppTextStyle(textcolor: ColorRes.black,weight: FontWeight.bold,size: 14),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: ColorRes.black,),
                    ],
                  ),
                ],
              ),
            ),





            // CarouselSlider(
            //   carouselController: controller,
            //   items:room.length,
            //   items: [
            //     //1st Image of Slider
            //     commonImageContainer(
            //       imagetext: "assets/images/hotel1.jpg"
            //     ),
            //     commonImageContainer(
            //         imagetext: "assets/images/hotel2.jpg"
            //     ),
            //     commonImageContainer(
            //         imagetext: "assets/images/hotel3.jpg"
            //     ),
            //     commonImageContainer(
            //         imagetext: "assets/images/hotel1.jpg"
            //     ),
            //   ],
            //

            //   //Slider Container properties
            //   options: CarouselOptions(
            //     initialPage: 1,
            //     onPageChanged: (index, reason) => (){
            //       setState(() {
            //         current=index;
            //         print(current);
            //       });
            //     },
            //
            //     // enlargeCenterPage: true,
            //     viewportFraction: 1.0,
            //     // aspectRatio: 2.0,
            //     // height: 180.0,
            //     // enlargeCenterPage: true,
            //     // autoPlay: false,
            //     // aspectRatio: 16 / 9,
            //     // autoPlayCurve: Curves.fastOutSlowIn,
            //     // enableInfiniteScroll: true,
            //     // // autoPlayAnimationDuration: Duration(milliseconds: 800),
            //     // viewportFraction: 0.8,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}