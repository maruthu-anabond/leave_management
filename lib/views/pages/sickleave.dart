import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/myWidget/loginbutton.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/templates/headernav.dart';
import '../../config/style.dart';
import 'package:leave_management/myWidget/leaveappbg.dart';

class sickleave extends StatefulWidget {
  @override
  _SickPageState createState() => _SickPageState();

}
class _SickPageState extends State<sickleave> {

  @override
  Widget build(BuildContext context) {
    return LeaveAppBackground(
      // child: Center(
      child: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: headerBar(
                      context,
                      profilePic: UIImageData.menu,
                      name: "1",
                      notificationIcon: UIImageData.notification,
                      notificationCount: (5).toString(),
                      extraIcon: true,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: headerStyleLeave(
                      "CL", context,
                      headerLeave: "Casual Leave",
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 15.0),
                  //   width: MediaQuery.of(context).size.width * 1.5,
                  //   height: MediaQuery.of(context).size.height * 0.8,
                  //   child: cardLeaveWidget(
                  //     Form(
                  //       child: Column(
                  //         children: <Widget>[
                  //
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

