import 'package:flutter/material.dart';

class ScreenProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
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
          SizedBox(width: 250,),
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
      width: 30,
      height: 30,
    );
  }

  Widget circleText() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      width: 30,
      height: 30,
      child: Center(child: Text('1')),
    );
  }

  Widget line() {
    return Container(
      color: Colors.blue,
      height: 5.0,
      width: 300.0,
    );
  }
}
