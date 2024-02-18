import 'package:flutter/material.dart';
import 'package:mazziah/branch_wala_list.dart';
import 'package:mazziah/list_of_branch.dart';
import 'package:mazziah/settlement_mpp.dart';
import 'models/owner_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddBranch extends StatefulWidget {
  const AddBranch({Key? key}) : super(key: key);

  @override
  _AddBranchState createState() => _AddBranchState();
}

class _AddBranchState extends State<AddBranch> {
  String selectedBranchType = 'Describe your branch';
  double rating = 2.4;
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
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          automaticallyImplyLeading: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15), // Set bottom border radius
            ),
            side: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchWalaList()));
                    }, icon: Icon(Icons.arrow_back_ios),),
                    Text(
                      '${owner.companyName}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 103),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.edit)),
                  ],
                ),
                Text(
                  '${owner.ownerName}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("lib/assets/branch.png"),
                ),
                SizedBox(width: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Branch Profile',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Registration No',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '123456789876',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Check',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'VAT No.',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '123456789876',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Check',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'Branch Name \"English\"',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Al-Ali, Mubarraz',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'Branch Name \"Arabic\"',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'العلي، المبرز',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: selectedBranchType,
                onChanged: (newValue) {
                  setState(() {
                    selectedBranchType = newValue!;
                  });
                },
                items: <String>[
                  'Describe your branch',
                  'Coffee',
                  'resturant',
                  'Barbershop',
                  'Pharmacy',
                  'ETC...'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Divider(),
            Text(
              'Branch Manager Name',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mohammad Nasser',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'Branch Manager Contact No.',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '123456789876',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Check',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            //google map
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius:
                    BorderRadius.circular(20), // Circular border radius
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Location in Google Map',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 30, // Width of the colored rectangle
                    height: 38, // Height of the colored rectangle
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white, // Color of the rectangle
                    ),
                  ),
                ],
              ),
            ),

            Divider(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius:
                    BorderRadius.circular(20), // Circular border radius
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Permit Google Map Rating Link',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 30, // Width of the colored rectangle
                    height: 38, // Height of the colored rectangle
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white, // Color of the rectangle
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Text(
              'Websie/ Menu /Social Medial Accounts',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            Row(
              children: [
                Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('lib/assets/twitter.png')),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'http//:map.app',
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add_box, color: Colors.black),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subscription',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Trial'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
                    [Color(0xfff9cc19)],
                    [Color(0xfff9cc19)],
                    [Color(0xfff9cc19)],
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettlementMpp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff9cc19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '29 SR/Month',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 8), // Add space between the icon and text
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ), // Star icon
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffab0148),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'MPP (SR)',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 4), // Add space between the icon and text
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Text('10-100'),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListOfBranch()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff9cc19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Save',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 8), // Add space between the icon and text
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
