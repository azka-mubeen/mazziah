import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15), // Set bottom border radius
        ),
        side: BorderSide(
          color: Colors.black,
          width: 2.w,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: Image.asset(
          'lib/assets/logoicon.png',
          height: 40.h,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
