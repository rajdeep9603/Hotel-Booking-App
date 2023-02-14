import 'package:client_ui_app/common/color_res.dart';
import 'package:client_ui_app/screens/hotels/hotel_view_model.dart';
import 'package:client_ui_app/screens/hotels/hotel_widgets/profile_widgets.dart';
import 'package:client_ui_app/screens/hotels/hotel_widgets/explore_widgets.dart';
import 'hotel_widgets/trips/trips_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotelscreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Hotelscreen> with TickerProviderStateMixin{
  HotelscreenViewModel? model;
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync:this);
  }
  @override
  Widget build(BuildContext context) {
    model = (model ??HotelscreenViewModel());

    return new Scaffold(
      body: model!.currentindex == 0 ? fullexplorebody(model!) : model!.currentindex == 1 ? tripsbody(controller,model!) :profile(model!),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model!.currentindex,
          selectedItemColor: ColorRes.green1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // title: Text("Explore"),
              backgroundColor: ColorRes.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              // title: Text("Trips"),
              backgroundColor: ColorRes.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              // title: Text("Profile"),
              backgroundColor: ColorRes.white,
            ),
          ],
          onTap: (ontouchvalue) {
            setState(() {
              model!.currentindex = ontouchvalue;
            });
          },
        ),
    );
  }
}

