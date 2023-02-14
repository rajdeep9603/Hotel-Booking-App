import 'package:client_ui_app/common/common_textstyle.dart';
import 'package:client_ui_app/filter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/color_res.dart';

Widget switchBtn({required String text,required bool defaltvalues,required void Function(bool)? ontap}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text, style: AppTextStyle(textcolor: ColorRes.black, size: 14),),
      CupertinoSwitch(
        activeColor: ColorRes.green1,
          value:defaltvalues,
          onChanged:ontap,
      ),
    ],
  );
}

Widget checkboxBtn({required bool defalutvalue,required String text,required void Function(bool?) ontouch}){
  return Row(
    children: [
      Checkbox(
          value:defalutvalue,
          onChanged:ontouch
      ),
      Text(text,style: AppTextStyle(textcolor: ColorRes.black,size: 14),),
    ],
  );
}