import 'dart:io';
// import 'package:anabond_rr/config/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:anabond_rr/views/functions.dart';
import 'package:flutter/services.dart';
import 'package:leave_management/config/images.dart';

class LeaveAppBackground extends StatefulWidget {
  final Widget child;
  LeaveAppBackground({Key? key, required this.child}) : super(key: key);
  @override
  _LeaveAppBackgroundState createState() => _LeaveAppBackgroundState();
}

class _LeaveAppBackgroundState extends State<LeaveAppBackground> {
  late String bg;
  // File uploadBG;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadData();
  }

  String setBg(){
    bg = UIImageData.bgcom;
    return bg;
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      // onWillPop: () async => false,
      onWillPop: () async {
        return true;
      },
      child: new Scaffold(resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(setBg()),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          child: widget.child,
        ),
      ),
    );

    return Scaffold(
    );
  }
}

