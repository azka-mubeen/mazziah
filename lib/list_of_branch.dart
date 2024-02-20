import 'package:flutter/material.dart';
import 'package:mazziah/add_branch1.dart';
import 'package:mazziah/widget/branch_widget.dart';
import 'models/branches_list.dart';
import 'models/owner_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfBranch extends StatelessWidget {
  const ListOfBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Owner owner = Owner(
      companyName: 'Company XYZ',
      ownerName: 'John Doe',
      userName: 'john_doe',
      email: 'john.doe@example.com',
      contactNo: '+1 (123) 456-7890',
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(120.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          shape:  RoundedRectangleBorder(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(15), // Set bottom border radius
            ),
            side: BorderSide(
              color: Colors.black,
              width: 2.w,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${owner.companyName}',
                  style:  TextStyle(fontSize: 18.sp),
                ),
                SizedBox(height: 10.h),
                Text(
                  '${owner.ownerName}',
                  style:  TextStyle(fontSize: 18.sp),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(20.h),
            child: Text(
              'List of Branchs',
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: branches.length,
              itemBuilder: (context, index) {
                return BranchWidget(
                  branch: branches[index],
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddBranch1()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xfff9cc19)), // Set background color to grey
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Set border radius to 5
                  ),
                ),
              ),
              child: Text(
                'Add Branch +',
                style: GoogleFonts.roboto(
                  fontSize: 20.h,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
