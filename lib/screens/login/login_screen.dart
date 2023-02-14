import 'package:client_ui_app/common/back_arrow.dart';
import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/screens/create_account/create_widgets/widgets.dart';
import 'package:client_ui_app/screens/login/login_view_model.dart';
import 'package:client_ui_app/screens/login/login_widgets/widgets.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  LoginViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model?? LoginViewModel());
    return Scaffold(
      backgroundColor: ColorRes.grey2,
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional(-0.90,-0.80),
          children: [
            fullbody(onpress:model!.login,model:model),
            BackArrow(),
          ],
        ),
      ),
    );
  }
}
