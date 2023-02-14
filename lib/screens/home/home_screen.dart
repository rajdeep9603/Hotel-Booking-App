import 'package:client_ui_app/screens/home/home_screen_view_model.dart';
import 'package:client_ui_app/screens/home/widgets.dart';

import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  HomeViewModel? model;
  @override
  Widget build(BuildContext context) {
    model = (model ?? HomeViewModel());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            boxcontainer(),
            upperbox(
              onpress:model!.getstarted,
            ),
          ],
        ),
      ),
    );
  }
}
