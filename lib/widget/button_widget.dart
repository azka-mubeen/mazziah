import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Button extends StatefulWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const Button({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFAC0249), // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0), // Border radius
          ),
        ),
        child: Text(
          widget.buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
