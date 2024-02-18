import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mazziah/login_page.dart';
import 'package:mazziah/widget/button_widget.dart';
import 'package:mazziah/widget/custom_appbar.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BusinessInfo.dart';

class LoginOTB extends StatefulWidget {
  const LoginOTB({Key? key}) : super(key: key);

  @override
  State<LoginOTB> createState() => _LoginOTBState();
}

class _LoginOTBState extends State<LoginOTB> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  String correctPin = '1234'; // Correct PIN

  bool isPinCorrect = true;
  bool isResendingOTP = false;
  int resendTimer = 30;

  get enteredPin => _otpPinFieldController.currentContext;


  void resendOTP() {
    setState(() {
      isResendingOTP = true;
      resendTimer = 30;
    });

    // Start countdown timer
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        resendTimer--;
        if (resendTimer == 0) {
          isResendingOTP = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:  false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, icon: Icon(Icons.arrow_back_ios)),
            Text(
              'OTP Verification',
              style: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Please Enter the code sent to the following number',
              style: GoogleFonts.roboto(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'lib/assets/flag.png',
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 50),
                Text(
                  '+1234567890', // Replace with your typed number
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            Divider(),
            if(!isPinCorrect)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.error, color: Color(0xffab0148)),
                SizedBox(width: 10),
                Text(
                  'Invalid OTP',
                  style: GoogleFonts.roboto(
                    color: Color(0xffab0148),
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            SizedBox(height: 50),
            OtpPinField(
              key: _otpPinFieldController,
              maxLength: 4,
              otpPinFieldDecoration:
              OtpPinFieldDecoration.defaultPinBoxDecoration,
              otpPinFieldStyle: OtpPinFieldStyle(
                defaultFieldBorderColor: Color(0xffBBBBBB),
                fieldBorderRadius: 5,
              ),
              onChange: (pin) {
              },
              onSubmit: (String text) {
                if (text == correctPin) {
                  // Navigate to next screen if the PIN is correct
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusinessInfo()),
                  );
                } else {
                  // Set isPinCorrect to false to display error message
                  setState(() {
                    isPinCorrect = false;
                  });

                  // Clear the OTP field
                  _otpPinFieldController.currentState?.clearOtp();
                }
              },
            ),
            SizedBox(height: 20),

            Row(
              children: [
                if(isResendingOTP)
                Icon(Icons.access_time),
                SizedBox(width: 5),
                if (isResendingOTP)
                  Text(
                    '$resendTimer s',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  )
                else
                  Text(
                    'Did not receive the OTP?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                Spacer(),
                TextButton(
                  onPressed: isResendingOTP ? null : resendOTP,

                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: isResendingOTP ? Colors.green : Colors.red[300],

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: Button(
                buttonText: 'Verify',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessInfo()));
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
