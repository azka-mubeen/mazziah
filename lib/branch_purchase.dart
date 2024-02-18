import 'package:flutter/material.dart';
import 'package:mazziah/BranchAnalysis.dart';
import 'package:mazziah/branch_purchase_c.dart';
import 'package:mazziah/branch_wala.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/settlement.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mazziah/widget/custom_navbar.dart';

import 'option_business.dart';

class BranchPurchase extends StatefulWidget {
  const BranchPurchase({Key? key}) : super(key: key);

  @override
  State<BranchPurchase> createState() => _BranchPurchaseState();
}

class _BranchPurchaseState extends State<BranchPurchase> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));
      },),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'lib/assets/newPur.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 13,
                  left: 20,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWala()));
                        },
                        child: Text(
                          "Wala's Program",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BranchPurchase()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            "New Purchase",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BranchAnalysis()));
        
                        },
                        child: Text(
                          "Customer Analysis",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Place a Customer Purchase',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Customer QR code', style: TextStyle(fontSize: 24,),),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffffdc32),
                        ),
                        child: Text(
                          'Scan',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                  child: Text('Customer Phone No.', style: TextStyle(fontSize: 24,),),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: const BoxDecoration(
                      // border: Border.all(color: Colors.black),
                    ),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber); // Handle phone number input
                      },
                      inputDecoration: const InputDecoration(
                        hintText: '56 234 56092',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Double check the phone number before clicking complete',
                    style: TextStyle(fontSize: 12,),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Purchase price (SR)"),
                      SizedBox(width: 10), // Adjust spacing between the text and the text field
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)),// Border on all four sides
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "20",// Remove default TextField border
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BranchPurchaseC()));
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
                              'Submit',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 8), // Add space between the icon and text
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
           
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => BranchAnalysis()));
                break;
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settlement()));
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context) => OptionBusiness()));
                break;
            }
          });
        },
      ),
    );
  }
}
