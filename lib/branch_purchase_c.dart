import 'package:flutter/material.dart';
import 'package:mazziah/branch_purchase.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BranchAnalysis.dart';
import 'option_business.dart';

class BranchPurchaseC extends StatefulWidget {
  const BranchPurchaseC({Key? key}) : super(key: key);

  @override
  State<BranchPurchaseC> createState() => _BranchPurchaseCState();
}

class _BranchPurchaseCState extends State<BranchPurchaseC> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {  Navigator.pop(context);},),
      body: Padding(
        padding:  EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            _buildUnderlinedText('Place a Customer Purchase'),
            SizedBox(height: 20.h),
            Center(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.close,
                            color: Colors.white, size: 20),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, left: 30.w), // Add top margin
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: 240.h,
                    decoration: BoxDecoration(
                      color: Color(0xffab0148),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        _buildDataRow('Settlement (1) SR'),
                        _buildDataRow('Purchase Price (20) SR'),
                        _buildDataRow('Phone Number:\n+966562345692'),
                        _buildDataRow('Customer User Name:\nAlia'),

                      ],
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: 180.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchPurchase()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff9cc19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Proceed',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 8.w), // Add space between the icon and text
                    ],
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchAnalysis()));
                break;
              case 1:
              // Already in the settlement screen
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OptionBusiness()));
                break;
            }
          });
        },
      ),

    );
  }

  Widget _buildUnderlinedText(String text) {
    return Text(
      text,
      style: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 18,
      ),
    );
  }

  Widget _buildDataRow(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.all(5),
                child: Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
