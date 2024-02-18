import 'package:flutter/material.dart';
import 'package:mazziah/add_branch1.dart';
import 'package:mazziah/widget/branch_widget.dart';
import 'models/branches_list.dart';
import 'models/owner_model.dart';
import 'package:google_fonts/google_fonts.dart';

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
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
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
            preferredSize: const Size.fromHeight(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${owner.companyName}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  '${owner.ownerName}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
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
            padding: const EdgeInsets.all(20),
            child: Text(
              'List of Branchs',
              style: GoogleFonts.roboto(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
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
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
