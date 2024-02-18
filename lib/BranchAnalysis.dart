import 'package:flutter/material.dart';
import 'package:mazziah/branch_wala_list.dart';
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
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // adjust this to fit your needs
              ),
              Positioned(
                top: 220, // adjust this value as needed
                left: 20, // adjust this value as needed
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BranchWala()));
                      },
                      child: const Text(
                        "Wala's Program",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BranchPurchase()));
                      },
                      child: const Text(
                        "New Purchase",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BranchAnalysis()));

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 5, right: 2),
                        child: Text(
                          "\nCustomer Analysis",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Period"),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        // Implement action for opening container
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Icon(Icons.add, color: Colors.black),
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
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        // Implement action for opening container
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Icon(Icons.add, color: Colors.black),
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
           borderRadius: BorderRadius.circular(25),
           border: Border.all(color: Colors.black),
           color: Colors.white,
         ),
         child: Column(
           children: [
             const Padding(
               padding: EdgeInsets.all(10),
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Wala's Customers", style: TextStyle(fontWeight: FontWeight.bold),),
                   Text("No. Purchase", style: TextStyle(fontWeight: FontWeight.bold),),
                 ],
               ),
             ),
             //Customer list
             Container(
               height: 120,
               child: MediaQuery.removePadding(
                 removeTop: true,
                 context: context,
                 child: ListView.builder(
                   itemCount: users.length,
                   itemBuilder: (context, index) {
                     return Container(
                       margin: const EdgeInsets.symmetric(horizontal: 8),
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
                             const SizedBox(width: 10),
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


