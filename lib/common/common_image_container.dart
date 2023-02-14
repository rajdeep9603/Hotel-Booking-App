import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

Widget commonImageContainer({
    Decoration? decorationBox,
  String?imagetext,

}){
  return Container(
    width: Get.width,
    height: 250,
    // margin: EdgeInsets.all(1.0),
    decoration:decorationBox?? BoxDecoration(
      borderRadius: BorderRadius.circular(2.0),
      image: DecorationImage(
        image: AssetImage(imagetext!),
        fit: BoxFit.fill,
      ),
    ),
  );
}