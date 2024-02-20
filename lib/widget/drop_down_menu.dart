import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String? _selectedOption = 'Describe your branch';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select an option:',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  _buildOption('Describe your branch'),
                  _buildOption('Coffee'),
                  _buildOption('Restaurant'),
                  _buildOption('Barbershop'),
                  _buildOption('Pharmacy'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(String option) {
    return Column(
      children: [
        RadioListTile<String>(
          title: Text(option),
          value: option,
          groupValue: _selectedOption,
          onChanged: (String? value) {
            setState(() {
              _selectedOption = value;
            });
          },
        ),
        Divider(),
      ],
    );
  }
}
