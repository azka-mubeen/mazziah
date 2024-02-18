import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mazziah/login_otb.dart';
import 'package:mazziah/widget/button_widget.dart';
import 'package:mazziah/widget/custom_appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
          child: CustomAppBar()),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, top: 50),
        children: [
          const Text(
            'Business Login',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 100,),
          Text(
            'Phone No',
            style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal),
          ),
          Container(
            decoration: const BoxDecoration(
             // border: Border.all(color: Colors.black),
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber); // Handle phone number input
              },
              inputDecoration: const InputDecoration(
                hintText: '56 234 56092',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              inputBorder: const OutlineInputBorder(borderSide:BorderSide(color: Colors.black)),
            ),
          ),
          const Divider(color: Colors.grey,),
          const SizedBox(height: 10,),
          Text(
            'Check your phone number before clicking on get otp',
            style: GoogleFonts.roboto(fontSize: 14,),
          ),
          const SizedBox(height: 40,),

          Align(
              alignment: Alignment.bottomCenter,
              child: Button(buttonText: 'Get OTP', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginOTB()));
              },)),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'By logging in, you agree to Mazziah app ',
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text(
                      'Terms of Use',
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    ' and ',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Text(
                      'Privacy Policy',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]

              )

            ],
          ),
        ],
      ),
    );
  }
}
