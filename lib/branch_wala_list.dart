import 'package:flutter/material.dart';
import 'package:mazziah/branch_purchase.dart';
import 'package:mazziah/branch_wala.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'package:mazziah/widget/generalize_branch.dart';

import 'models/branches_list.dart';
import 'option_business.dart'; // Import your BranchWidget

class BranchWalaList extends StatefulWidget {
  const BranchWalaList({Key? key}) : super(key: key);

  @override
  State<BranchWalaList> createState() => _BranchWalaListState();
}

class _BranchWalaListState extends State<BranchWalaList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>BranchPurchase()));
      },),
      body: Column(
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
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                  ),
                ),
                // Spacer or SizedBox for spacing
                SizedBox(height: 20),
                Text(
                  "Generalize to other branches",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // Display BranchWidget for each branch in the li
          Expanded(
            child: ListView.builder(
              itemCount: branches.length,
              itemBuilder: (context, index) {
                return GeneralizeBranch(branch: branches[index]);
              },
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWala()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Color(0xffab0148), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Border radius
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text("Confirm"),
                ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settlement()));

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
}
