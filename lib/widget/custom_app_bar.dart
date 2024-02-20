import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackButtonPressed; // Callback function for back button

  const CustomAppBar({Key? key, required this.onBackButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(220.h),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shape:  RoundedRectangleBorder(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
          side: BorderSide(
            color: Colors.black,
            width: 2.w,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: onBackButtonPressed,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Image.asset('lib/assets/branch.png'),
                    Container(
                      margin: EdgeInsets.only(left: 50.h),
                      child: Column(
                        children: [
                          Text('Branch Name'),
                          Text('Manager Name'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 100.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('lib/assets/donation.png'),
                        SizedBox(width: 5.w), // Adjust the width as needed
                        Text('6'),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('lib/assets/pp.png'),
                        SizedBox(width: 5.w), // Adjust the width as needed
                        Text('12 (SR)'),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 15.h,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Change the color as needed
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(220.h);
}
