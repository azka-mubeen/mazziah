import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessInfo extends StatelessWidget {
  const BusinessInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            body: Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           SizedBox(height: 20.h),
          Center(
            child: Text(
              'Business Owner Profile',
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Company Name',
            style: GoogleFonts.roboto(
              fontSize: 16.h,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 40.h,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter company name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      10.h),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              ToggleSwitch(
                minWidth: 120.w,
                minHeight: 30.h,
                initialLabelIndex: 0,
                cornerRadius: 5.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.white,
                inactiveFgColor: Colors.black,
                borderColor: [Colors.black],
                borderWidth: 1.5.w,
                totalSwitches: 2,
                labels: ['Owner', 'Representative'],
                activeBgColors: [
                  [Color(0xffAB0349)],
                  [Color(0xffAB0349)]
                ],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(
                width: 30.w,
              ),
              Text(
                'Name',
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 40.h,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'User name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      10.0), // Optional: Customize border radius
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Contact Email',
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              decoration: TextDecoration.underline,
            ),
          ),
          Container(
            height: 40.h,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'User name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(
                      10.0), // Optional: Customize border radius
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Contact No.',
            style: GoogleFonts.roboto(
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '+966 56 123 4567', // Replace with already entered number
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle save button
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.grey), // Set background color to grey
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Set text color to white
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5.0), // Set border radius to 5
                    ),
                  ),
                ),
                child: const Text('Change'),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xfff9cc19)), // Set background color to grey
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Set border radius to 5
                  ),
                ),
              ),
              child: Text(
                'Save',
                style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
