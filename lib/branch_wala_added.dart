import 'package:flutter/material.dart';
import 'package:mazziah/branch_wala.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/widget/progress_line2.dart';
import 'BranchAnalysis.dart';
import 'option_business.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BranchWalaAdded extends StatefulWidget {
  const BranchWalaAdded({super.key});

  @override
  State<BranchWalaAdded> createState() => _BranchWalaAddedState();
}

class _BranchWalaAddedState extends State<BranchWalaAdded> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWala()));
      },),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "WALA's Program Overview",
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    //for timeline
                   ProgressLine2(),
                    Text(
                      "Customer WALA's Program",
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                )),
            //for purchase
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(8.h),
                    child: Image.asset(
                      'lib/assets/branch.png', // Replace 'your_image.png' with your image path
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "First Milestone",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Add edit functionality
                            },
                          ),
                        ],
                      ),
                      Text(
                        "Free small Kabab",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Required No. Purchases",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text("10"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            // for purchase to made
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/assets/branch.png', // Replace 'your_image.png' with your image path
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Second Milestone",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Free Shawarma",
                        style: TextStyle(
                          fontSize: 16..sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Required No. Purchases",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text("10"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            //for add new
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add,
                          size: 36,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWalaList()));
                 },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xffab0148),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  minimumSize: Size(double.infinity, 0), // Set button width to 80% of available space
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Generlize to other Branch",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
        
        
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        initialIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index;
            switch (_selectedIndex) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  BranchAnalysis()));

                break;
              case 1:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Settlement()));

                break;
              case 2:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OptionBusiness()));
                break;
            }
          });
        },
      ),
    );
  }
}
