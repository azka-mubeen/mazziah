import 'dart:ui';

class Branch {
  final String branchName;
  final String registrationNo;
  final String managerName;
  final String pictureUrl;
  final double purchasePrice;
  final double donation;
  final Color color;
  bool isSelected;

  Branch({
    required this.branchName,
    required this.registrationNo,
    required this.managerName,
    required this.pictureUrl,
    required this.purchasePrice,
    required this.donation,
    required this.color,
    required this.isSelected, // Initialize isSelected from constructor
  });

  // Getter for isSelected
  bool get selected => isSelected;

  // Setter for isSelected
  set selected(bool value) {
    isSelected = value;
  }
}
