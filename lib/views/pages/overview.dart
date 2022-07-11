import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/config/app_lang.dart';
import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/views/functions.dart';
import '../functions.dart';

class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  // bool _slowAnimations = false;
  // NotificationData notify = new NotificationData();

  bool loading = true;
  bool profileFlag = true;
  @override
    void initState() {
    checkLogin();
    super.initState();
    
  }
  checkLogin () {
    //   var org = await getSP('organization');
    //   var queryParameters = "organization="+org;
    //   var result = await get('notification', body: queryParameters);
      // var result = await getSP('access_token');
      // if (result == null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Login()));
        });
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Login()),
        // );


      // }
    }
    
      @override
      Widget build(BuildContext context) {
        return AppBackground(
            child: loader()
        );
      }
}