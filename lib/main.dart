import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazziah/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil with the desired design dimensions
    ScreenUtil.init(
      context,
      designSize: const Size(412, 1000),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
    );
  }
}
