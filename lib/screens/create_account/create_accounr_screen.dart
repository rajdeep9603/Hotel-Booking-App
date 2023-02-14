import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/screens/create_account/create_accounr_view_model.dart';
import 'package:client_ui_app/screens/create_account/create_widgets/widgets.dart';
import 'package:flutter/material.dart';

class Createaccount extends StatefulWidget {
  @override
  _CreateaccountState createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  createAccountViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model?? createAccountViewModel());
    return Scaffold(
      backgroundColor: ColorRes.grey2,
      body:Stack(
        alignment: AlignmentDirectional(-0.90,-0.80),
        children: [
          createfullbody(onpress: model!.login,onClick: model!.signup,model:model!),
          BackArrow(),
        ],
      )
    );
  }
}
