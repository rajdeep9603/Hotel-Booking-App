import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/country_ViewModel.dart';
import 'package:client_ui_app/main_setting_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  CountryViewModel? model;

  var selectcountry;

  bool countrybool = false;

  @override
  Widget build(BuildContext context) {
    model = (model ?? CountryViewModel());
    return Scaffold(
      backgroundColor: ColorRes.white1,
      body:Padding(
        padding:EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             alignment: Alignment.centerLeft,
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: Get.height/13,),
                 BackArrow(),
                 SizedBox(height:Get.height/30,),
               ],
             )
           ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  height: Get.height/2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: model!.country.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          setState(() {
                            selectcountry = model!.country[index];
                            countrybool = true;
                            print(countrybool);
                            print(selectcountry);
                            // Get.to(()=>Setting({selectcountry,countrybool}));
                            // Get.back();
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(model!.country[index],),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
