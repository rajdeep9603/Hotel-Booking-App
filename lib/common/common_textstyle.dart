 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle AppTextStyle({
FontWeight? weight,
double? size,
Color? textcolor,
TextDecoration? textdecoration,
double? letterspacing,
double? height,

 }){
return TextStyle(
fontWeight:weight ?? FontWeight.normal,
fontSize:size ?? 16,
color: textcolor ?? Colors.white,
decoration:textdecoration ?? TextDecoration.none,
  letterSpacing: letterspacing,
  height: height,
);
}