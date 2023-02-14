import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget commonTextFormFeild({
 TextEditingController?textcontroller,
  String? Function(String?)?  validator,
  Widget? prefixicon,
  FocusNode? Focusnode,
  double? width,
  double? height,
  BoxDecoration? boxdecoration,
  InputDecoration? textfeilddecoration,
  EdgeInsetsGeometry? margin,
  EdgeInsetsGeometry? padding,
  String? text,
  TextInputType? keyBoardType,
  AlignmentGeometry? Alignment,

}){
  return Container(
    alignment: Alignment?? null,
    width: width?? null,
    height: height?? null,
    decoration: boxdecoration?? null,
    margin: margin?? null,
    padding: padding?? null,
    child: Padding(
      padding: EdgeInsets.only(left: 20),
      child: TextFormField(
        focusNode: Focusnode??null,
        validator: validator??null,
        controller: textcontroller ?? null,
        keyboardType: keyBoardType ?? TextInputType.text,
        decoration:textfeilddecoration??InputDecoration(
          prefixIcon: prefixicon ?? null,
          hintText: text,hintStyle: AppTextStyle(textcolor: ColorRes.grey),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
      ),
      ),
    ),
  );
}