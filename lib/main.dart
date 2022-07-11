import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/pages/overview.dart';
import 'package:flutter/material.dart';
import 'config/config.dart';
import 'config/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
          new TextEditingController().clear();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Leave Application',
        // theme: appThemeData,
        home: OverView(),
      ),

    );
  }
}
