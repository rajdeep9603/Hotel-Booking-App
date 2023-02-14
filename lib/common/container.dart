import 'package:client_ui_app/common/color_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget commonBox({
   VoidCallback? onpress,
  double? width,
  double? height,
  Color? boxcolor,
  Decoration? decoration,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? margin,
  BoxBorder? border,
  Alignment? alignment,
  Widget? child,
  List<ClipRRect>? children,

}){
  return InkWell(
    onTap: onpress??null,
    child: Container(
      alignment: alignment??null,
      width: width?? null,
      height: height?? null,
      padding: padding?? null,
      margin: margin?? null,

      decoration: decoration?? BoxDecoration(
        color: boxcolor?? ColorRes.white,
        border: border??null,
      ),
      child:child?? null,
    ),
  );
}