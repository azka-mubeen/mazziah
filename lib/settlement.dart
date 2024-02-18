import 'package:flutter/material.dart';
import 'package:mazziah/add_branch1.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/widget/custom_navbar.dart';

import 'BranchAnalysis.dart';
import 'option_business.dart';

class Settlement extends StatefulWidget {
  const Settlement({Key? key}) : super(key: key);

  @override
  State<Settlement> createState() => _SettlementState();
}

class _SettlementState extends State<Settlement> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {  
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));
      },),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Setellment',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddBranch1()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffacd18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Change',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),]

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.star, color: Colors.yellow,),
                    label: Text('Basic', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xffab0148)), // Change background color to brown
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Change background color to the specified brown color
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(),
                        ),
                      ),
                    ),
                    child: Text('MPP-10 (SR)',style: TextStyle(color: Colors.black),),
                  ),

                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Basic: For each customer purchase,\na settlement of 1 SR is added Which entails customer 100 EXP \$ 1',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Image.asset(
                      "lib/assets/coin.png", // Replace 'your_image.png' with your image asset path
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 40),
              _buildUnderlinedText('Active Settlement'),
              SizedBox(height: 10),
              _buildSettlementRow('Subscription', '29 SR/Month', 'MPP 10SR'),
              _buildSettlementRow('Customer Purchase Count', '6', '12 SR'),
              _buildSettlementRow('Voucher', '25 SR', ''),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Text('Total 46 SR', style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffab0148)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                ),
              ),
            ],
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
      ),
    );
  }

  Widget _buildSettlementRow(String title, String value1, String value2) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          SizedBox(width: 10),
          Expanded(child: Text(value1)),
          SizedBox(width: 10),
          Expanded(child: Text(value2)),
        ],
      ),
    );
  }
}
