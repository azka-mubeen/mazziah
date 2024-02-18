import 'package:flutter/material.dart';

import 'branch_model.dart';

final List<Branch> branches = [
  Branch(
    branchName: 'Branch A',
    registrationNo: '123456789',
    managerName: 'Manager X',
    pictureUrl: 'lib/assets/branch.png',
    purchasePrice: 5,
    donation: 1,
    color: Colors.white,
    isSelected: true
  ),
  Branch(
    branchName: 'Branch B',
    registrationNo: '987654321',
    managerName: 'Manager Y',
    pictureUrl: 'lib/assets/branch.png',
    purchasePrice: 7,
    donation: 2,
    color: Colors.blue,
    isSelected: false
  ),
  Branch(
    branchName: 'Branch C',
    registrationNo: '987654321',
    managerName: 'Manager Z',
    pictureUrl: 'lib/assets/branch.png',
    purchasePrice: 7,
    donation: 2,
    color: Colors.yellow,
    isSelected: false
  ),
  Branch(
    branchName: 'Branch D',
    registrationNo: '987654321',
    managerName: 'Manager A',
    pictureUrl: 'lib/assets/branch.png',
    purchasePrice: 8,
    donation: 2,
    color: Colors.grey,
    isSelected: false
  ),
];
