import 'package:flutter/material.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';

import 'option_business.dart';

class BranchUnsab extends StatefulWidget {
  const BranchUnsab({Key? key}) : super(key: key);

  @override
  State<BranchUnsab> createState() => _BranchUnsabState();
}

class _BranchUnsabState extends State<BranchUnsab> {
  int _selectedIndex = 0;

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));
      },),
      body: Container(
        color: Colors.white.withOpacity(0.4),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settlement()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Color(0xfffc9c19), // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50), // Border radius
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text("In-active, go to settlement"),
              ),
            ),
          ),
        ),

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
