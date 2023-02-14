

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class InvitefriendViewModel{
  void shareBtn(context) {
    final RenderBox box = context.findRenderObject();
    Share.share("https://medium.com/@suryadevsingh24032000",
        subject: 'Follow me',
        sharePositionOrigin:
        box.localToGlobal(Offset.zero) & box.size);
  }
}