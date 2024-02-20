import 'package:flutter/material.dart';
import 'package:mazziah/branch_wala_add.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'package:mazziah/widget/progress_line.dart';
import 'BranchAnalysis.dart';
import 'branch_purchase.dart';
import 'branch_wala_list.dart';
import 'option_business.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchWala extends StatefulWidget {
  const BranchWala({Key? key}) : super(key: key);

  @override
  State<BranchWala> createState() => _BranchWalaState();
}

class _BranchWalaState extends State<BranchWala> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchPurchase()));
        
      },),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'lib/assets/brcWala.png',
                        height: 360.h,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 230.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const BranchWala()));
                                },
                                child: Text(
                                  "\nWala's Program",
                                  style: TextStyle(color: Colors.white,fontSize: 14.sp),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BranchPurchase()));
                              },
                              child:  Text(
                                "New Purchase",
                                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  BranchAnalysis()));

                              },
                              child:  Text(
                                "Customer Analysis",
                                style: TextStyle(color: Colors.black, fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "WALA's Program Overview",
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  ScreenProgress(),
                  Container(
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Customer WALA's Program",
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )),
          //branch added
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Image.asset(
                    'lib/assets/branch.png',
                    width: 80.w,
                    height: 80.h,
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
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            // Add edit functionality
                          },
                        ),
                      ],
                    ),
                     Text(
                      "Free small Kabab",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Required No. Purchases",
                          style: TextStyle(
                            fontSize: 14.sp,
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
          //add branch
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.h),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black),
                    ),
                    child:  Padding(
                      padding: EdgeInsets.all(8.h),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWalaAdd()));
                        },
                        child: Icon(
                          Icons.add,
                          size: 20.w,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 0.h,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BranchWalaList()));
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xfff9cc19),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.h),
              ),
              minimumSize: const Size(double.infinity,
                  0),
            ),
            child:Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                "Generlize to other Branch",
                style: TextStyle(fontSize: 15.sp, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        initialIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() {
            _selectedIndex = index;
            switch (_selectedIndex) {
              case 0:
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
