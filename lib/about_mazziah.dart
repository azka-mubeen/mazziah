import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMazziah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0, // No shadow
        shape:  RoundedRectangleBorder(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
          side: BorderSide(
            color: Colors.black,
            width: 2.w,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xfff5f5f5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //about mazziah
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'About Mazziah',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Text(
                        "At Mazziah, we've crafted an environment where the essence of fun, engagement, and interactivity converge to forge meaningful connections between businesses and customers. By utilizing our app, you'll be immersed in an exclusive program, earning points through a variety of actions, from purchases to various activities within the app. These accrued points can then be redeemed for valuable rewards, adding an extra layer of delight to your experience.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),

                      Text(
                        'Our Story:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "When visiting any shop, the only connection between customers and businesses is their transactions, we noticed an opportunity to reshape the way this connection works. We envisioned a future where business and customer interaction become immersive, engaging experiences that inspire genuine connections. This vision sparked the birth of Mazziah company.",
                        style: TextStyle(
                          fontSize: 16.h,
                        ),
                      ),

                      SizedBox(height: 20.h),
                      Text(
                        "Together, let's create a future where businesses and customers forge lasting connections.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(
                        'Our Vision:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "At Mazziah, we aspire to shape a future where loyalty programs transcend mere transactional exchanges, evolving into immersive, engaging, and user-friendly experiences. Our goal is to cultivate profound connections between businesses and customers, elevating the relationship to new heights of meaningful interaction.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        'Our Mission:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "At Mazziah, we're on a mission to empower both businesses and customers through innovative applications that inspire, reward, and foster engagement on multiple fronts. With a special focus on loyalty, brand building, and community development, we aim to create a dynamic space where success is not just a destination but a shared journey of growth and fulfillment.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade500,
                      width: 5.w,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 10.h,
                      width: 200.w,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10.h,),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
