import 'package:flutter/material.dart';
import '../models/branch_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralizeBranch extends StatefulWidget {
  final Branch branch;

  const GeneralizeBranch({Key? key, required this.branch}) : super(key: key);

  @override
  State<GeneralizeBranch> createState() => _GeneralizeBranchState();
}

class _GeneralizeBranchState extends State<GeneralizeBranch> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(-3, 3), // Shadow positioned downwards
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Checkbox
          Checkbox(
            value: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = value ?? false;
              });
              // Add functionality to handle checkbox state change
              widget.branch.isSelected = isSelected; // Update the branch's isSelected property
            },
            checkColor: Colors.white,
            activeColor: Colors.blue,
          ),
          // Leading picture
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(widget.branch.pictureUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 30.w,),
          // Column with branch information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // First row with branch name and registration no
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Branch name and registration no
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.branch.branchName, style: const TextStyle(fontSize: 18)),
                        Text(widget.branch.registrationNo),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          Container(
            width: 30.w,
            height: 70.h,
            color: widget.branch.color,
          ),
        ],
      ),
    );
  }
}
