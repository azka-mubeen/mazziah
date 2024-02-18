import 'package:flutter/material.dart';
import 'package:mazziah/about_mazziah.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/disclamir.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';

import 'BranchAnalysis.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;

  const OptionButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = Colors.white,
    this.textColor = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          onPrimary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class OptionBusiness extends StatefulWidget {
  const OptionBusiness({Key? key}) : super(key: key);

  @override
  State<OptionBusiness> createState() => _OptionBusinessState();
}

class _OptionBusinessState extends State<OptionBusiness> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));
      },),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OptionButton(text: 'Transaction History', onPressed: () {}),
            const SizedBox(height: 30),
            OptionButton(text: 'Help Center', onPressed: () {}),
            const SizedBox(height: 30),
            OptionButton(
                text: 'About Mazziah',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutMazziah()));
                }),
            OptionButton(text: 'Contact Us', onPressed: () {}),
            OptionButton(text: 'Disclaimers', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Disclamir()));
            }),
            const SizedBox(height: 30),
            OptionButton(text: 'App Rating', onPressed: () {}),
            const SizedBox(height: 40),
            OptionButton(
              text: 'Sign Out',
              onPressed: () {},
              // Different background color for sign out button
              buttonColor: Color(0xfff9cc19),
              textColor: Colors.black,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settlement()));

                break;
              case 2:
                break;
            }
          });
        },
      ),

    );
  }
}
