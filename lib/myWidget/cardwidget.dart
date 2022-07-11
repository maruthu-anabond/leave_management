import 'package:flutter/material.dart';

Widget cardWidget(Widget child) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.baseline,
      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          // height: 500.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: child,
        ),
      ],
    ),
  );
}

Widget cardWidgetlogin(Widget child) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: child,
        ),
      ],
    ),
  );
}
