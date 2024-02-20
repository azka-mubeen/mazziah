import 'package:flutter/material.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/bar_chart.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'branch_purchase.dart';
import 'branch_wala.dart';
import 'models/purchase_model.dart';
import 'models/walacustomerslist.dart';
import 'option_business.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BranchAnalysis extends StatefulWidget {


  BranchAnalysis({Key? key}) : super(key: key);

  @override
  State<BranchAnalysis> createState() => _BranchAnalysisState();
}

class _BranchAnalysisState extends State<BranchAnalysis> {
  int _selectedIndex = 0;
  final List<PurchaseData> data = [
  PurchaseData('Sunday', 150, 100.0),
  PurchaseData('Monday', 180, 110.0),
  PurchaseData('Tuesday', 200, 120.0),
  PurchaseData('Wednesday', 220, 130.0),
  PurchaseData('Thursday', 240, 140.0),
  PurchaseData('Friday', 230, 135.0),
  PurchaseData('Saturday', 210, 125.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(onBackButtonPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListOfBranch()));
      },),

      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'lib/assets/brcAnalysis.png',
                height: 360.h,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // adjust this to fit your needs
              ),
              Positioned(
                top: 230.h,
                left: 20.w,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BranchWala()));
                      },
                      child: Text(
                        "Wala's Program",
                        style: TextStyle(color: Colors.black,
                        fontSize: 14.sp),
                      ),
                    ),
                     SizedBox(width: 30.w,),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BranchPurchase()));
                      },
                      child:  Text(
                        "New Purchase",
                        style: TextStyle(color: Colors.black,fontSize: 14.sp),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BranchAnalysis()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h,left: 14.w, right: 2.w),
                        child: Text(
                          "\nCustomer Analysis",
                          style: TextStyle(color: Colors.white,fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
           SizedBox(height: 8.w,),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Period"),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        // Implement action for opening container
                      },
                      child: Container(
                        width: 30.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Icon(Icons.add, color: Colors.black, size: 14.sp,),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Filter"),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        // Implement action for opening container
                      },
                      child: Container(
                        width: 30.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child:  Icon(Icons.add, color: Colors.black, size: 14.sp,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //bar chart
       CustomBarChart(data: data),
       Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(25.sp),
           border: Border.all(color: Colors.black),
           color: Colors.white,
         ),
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.all(8.h),
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Wala's Customers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                   Text("No. Purchase", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),),
                 ],
               ),
             ),
             //Customer list
             SingleChildScrollView(
               child: Container(
                 height: 90.h,
                 child: MediaQuery.removePadding(
                   removeTop: true,
                   context: context,
                   child: ListView.builder(
                     itemCount: users.length,
                     itemBuilder: (context, index) {
                       return Container(
                         margin:  EdgeInsets.symmetric(horizontal: 8.w),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           border: Border.all(color: Colors.black),
                           color: Colors.white,
                         ),
                         child: ListTile(
                           leading: Text('${index + 1}'), // Displaying the index as leading
                           title: Row(
                             children: [
                               const CircleAvatar(
                                 backgroundColor: Colors.red,
                                 // backgroundImage: AssetImage(users[index].profilePictureUrl),
                               ),
                               SizedBox(width: 10.w),
                               Text(users[index].userName),
                             ],
                           ),
                           trailing: Text('${users[index].numberOfPurchases}'),
                         ),
                       );
                     },
                   ),
                 ),
               ),
             ),
           ],
         ),
       )

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
                  MaterialPageRoute(builder: (context) => const Settlement()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OptionBusiness()),
                );
                break;
            }
          });
        },
      ),

    );
  }
}


