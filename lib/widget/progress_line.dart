import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(children: [
        Row(
          children: <Widget>[
            circle(),
            line(),
            circleText(),
          ],
        ),
        Row(children: [
          Text('No. Purchase'),
          SizedBox(width: 250.w,),
          Text('10'),
        ])
      ]),
    );
  }

  Widget circle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      width: 30.w,
      height: 30.h,
    );
  }

  Widget circleText() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      width: 30.w,
      height: 30.h,
      child: Center(child: Text('1')),
    );
  }

  Widget line() {
    return Container(
      color: Colors.blue,
      height: 5.h,
      width: 300.w,
    );
  }
}
