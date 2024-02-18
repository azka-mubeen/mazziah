import 'package:flutter/material.dart';
import 'package:mazziah/BranchUnsub.dart';

import '../models/branch_model.dart';
class BranchWidget extends StatelessWidget {
  final Branch branch;
  const BranchWidget({Key? key, required this.branch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
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
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchUnsab()));
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Leading picture
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
               // shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(branch.pictureUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Column with branch information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // First row with branch name and registration no
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Edit icon
                      const Icon(Icons.edit),
                      // Branch name and registration no
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(branch.branchName, style: const TextStyle(fontSize: 18)),
                          Text(branch.registrationNo),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Second row with donation and purchase price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Donation icon and amount
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset('lib/assets/donation.png'),
                            const SizedBox(width: 5),
                            Text('${branch.donation}'),
                          ]
                        ),
                      ),
                      // Handshake icon and purchase price
                      Row(
                        children: [
                          Image.asset('lib/assets/pp.png'),
                          const SizedBox(width: 5),
                          Text('${branch.purchasePrice} SR'),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              width: 30,
              height: 100,
              color: branch.color,
            ),
          ],
        ),
      ),
    );
  }
}
