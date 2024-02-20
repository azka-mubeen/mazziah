import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressLine2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(children: [
        Row(
          children: <Widget>[
            circle(),
            line(),
            circleText('1'),
            dashedLine(),
            circleText('2'),
          ],
        ),
        Row(children: [
          Text('No. Purchase'),
          SizedBox(width: 70.w,),
          Text('10'),
          SizedBox(width: 90.w,),
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

  Widget circleText(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      width: 30.w,
      height: 30.h,
      child: Center(child: Text(text)),
    );
  }

  Widget line() {
    return Container(
      color: Colors.blue,
      height: 5.h,
      width: 105.w,
    );
  }

  Widget dashedLine() {
    return Container(
      height: 5.h,
      width: 105.w,
      child: CustomPaint(
        painter: DashedLinePainter(),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final double dashWidth = 5.w;
    final double dashSpace = 5.w;
    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(
          Offset(startX, 0.0), Offset(startX + dashWidth, 0.0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
