import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/myWidget/loginbutton.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/templates/headernav.dart';
import '../../config/style.dart';

class sickleave extends StatefulWidget {
  @override
  _SickPageState createState() => _SickPageState();

}
class _SickPageState extends State<sickleave> {

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      bgflag: true,
      child: Container(
        child: Stack(
          children: <Widget>[
        Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          SizedBox(height: 30.0,
        ),
        Container(
          child: headerBar(
            context,
            profilePic: 'assets/images/menu.png',
            name: "1",
            notificationIcon: UIImageData.notification,
            notificationCount: (5).toString(),
            extraIcon: true,
          ),
        ),
        Container(
          child: headerStyleLeave(
            "SL", context,
            headerLeave: "Sick Leave",
          ),
        ),
      ],
      ),
      ),
      ],
      ),
      ),
    );
  }
}