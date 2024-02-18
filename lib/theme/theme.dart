import 'package:flutter/material.dart';
class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Color(0xff6c6c6c),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/assets/mazziah.png'), // Logo image
                  SizedBox(height: 20),
                  Image.asset('lib/assets/theme.png'), // Theme image
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/assets/mazziah.png'), // Logo image
                  SizedBox(height: 20),
                  Image.asset('lib/assets/theme.png'), // Theme image
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
