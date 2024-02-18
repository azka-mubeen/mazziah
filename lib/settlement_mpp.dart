import 'package:flutter/material.dart';
import 'package:mazziah/BranchAnalysis.dart';
import 'package:mazziah/add_branch.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/option_business.dart';
import 'package:mazziah/widget/custom_app_bar.dart';
import 'package:mazziah/widget/custom_navbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'branch_wala_list.dart';

class SettlementMpp extends StatefulWidget {
  const SettlementMpp({Key? key}) : super(key: key);

  @override
  State<SettlementMpp> createState() => _SettlementMppState();
}

class _SettlementMppState extends State<SettlementMpp> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onBackButtonPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfBranch()));

      },),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUnderlinedText('Subscription'),
            const SizedBox(height: 10),
            Row(
              children: [
                ToggleSwitch(
                  minWidth: 110.0,
                  minHeight: 30,
                  initialLabelIndex: 0,
                  cornerRadius: 5.0,
                  activeFgColor: Colors.black,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.black,
                  borderColor: [Colors.black],
                  borderWidth: 1.5,
                  totalSwitches: 3,
                  labels: ['Basic', 'Value', 'Royal'],
                  activeBgColors: [
                    [Color(0xff979797)],
                    [Color(0xffB1DBF1)],
                    [Color(0xff800080)],
                  ],
                  onToggle: (index) {
                    // print('switched to: $index');
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'M',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettlementMpp()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff979797),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '29 SR/Month',
                      style: TextStyle(color: Colors.black),
                    ),
                    // Star icon
                  ],
                ),
              ),
            ),
            const Divider(),
            Center(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.close,
                            color: Colors.white, size: 20),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 30), // Add top margin
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle save button
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey), // Set background color to grey
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white), // Set text color to white
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0), // Set border radius to 5
                                ),
                              ),
                            ),
                            child: const Text('Basic'),
                          ),
                          const SizedBox(height: 10),
                          const Text('Minimum Purchase Price'),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter MPP (SR)',
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddBranch()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen), // Set background color to grey
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white), // Set text color to white
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(5.0), // Set border radius to 5
                                ),
                              ),
                            ),
                            child: const Text('Confirm'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
      style: const TextStyle(decoration: TextDecoration.underline),
    );
  }
}
