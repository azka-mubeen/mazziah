
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mazziah/login_page.dart';
import 'package:mazziah/widget/button_widget.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Image.asset('lib/assets/mazziah.png'),
            ),
            Text(
              'Welcome',
              style: GoogleFonts.roboto(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Get ready to level up your shopping\nexperience with our innovative app. We've\nadded thrilling elements to make your\njourney even more engaging and rewarding",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Image.asset(
                  'lib/assets/bg.png',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(buttonText: 'Get Started', onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },),
                        SizedBox(height: 20),
                        Text(
                          'Mazziah app is officially registered\nwith Ecommerce number XXXXXX at XXXX\nMa3rooof link\nBusiness center linkFills',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
