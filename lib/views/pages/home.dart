import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/myWidget/loginbutton.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppBackground(child:
        ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
          SizedBox(
          height: 40.0,
        ),
      InkWell(
        child: button(),
      ),
      ],
        ),
    );
  }
}