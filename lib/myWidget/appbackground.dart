import 'dart:io';
// import 'package:anabond_rr/config/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:anabond_rr/views/functions.dart';
import 'package:flutter/services.dart';
import 'package:leave_management/config/images.dart';

class AppBackground extends StatefulWidget {
  final Widget child;
  AppBackground({Key? key, required this.child}) : super(key: key);
  @override
  _AppBackgroundState createState() => _AppBackgroundState();
}

class _AppBackgroundState extends State<AppBackground> {
  String bg = UIImageData.bg;
  // File uploadBG;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadData();
  }

  // loadData() async {
  //   bg = await getSP('bg');
  //   if (bg == null) {
  //     String stringPath = await getSP('uploadBG');
  //     if (stringPath != null) {
  //       uploadBG = File(stringPath);
  //       bool test = await uploadBG.exists();
  //       if (!test) {
  //         uploadBG = null;
  //       }
  //     }
  //   }
  //   if (this.mounted) setState(() {});
  // }

  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //   loadData();
  // }

  // @override
  // void didUpdateWidget(AppBackground oldWidget) {
  //   // TODO: implement didUpdateWidget
  //   super.didUpdateWidget(oldWidget);
  //   loadData();
  // }

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
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(UIImageData.bg),
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

