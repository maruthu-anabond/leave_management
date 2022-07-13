import 'package:flutter/material.dart';

Widget cardWidget(Widget child) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
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
  return Container(
    // width: MediaQuery.of(context).size.width,
    // height: MediaQuery.of(context).size.height,
    // height: 338.0,
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(55.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0x29000000),
          offset: Offset(0, 3),
          blurRadius: 6,
        ),
      ],
    ),
    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  // return Card(
  //   elevation: 0.0,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(10.0),
  //   ),
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
