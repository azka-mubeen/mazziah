import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int initialIndex;
  final Function(int) onIndexChanged;

  const CustomBottomNavigationBar({
    Key? key,
    required this.initialIndex,
    required this.onIndexChanged,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 80.h,
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              widget.onIndexChanged(index);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                label: 'Settlement',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Options',
              ),
            ],
            selectedItemColor: Colors.black,
            selectedFontSize: 16.sp,
            unselectedFontSize: 16.sp,
          ),
        ),
        SizedBox(height: 8.h,),
        Positioned(
          bottom: 8.h,
          left: MediaQuery.of(context).size.width * 0.36, // 20% width
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3, // 20% width
            height: 4.h,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
