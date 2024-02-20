import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Disclamir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0, // No shadow
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
          side: BorderSide(
            color: Colors.black,
            width: 2.w,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 20.h),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff5f5f5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //about mazziah
              Container(
                margin:  EdgeInsets.all(20.h),
                padding: EdgeInsets.all(20.h),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                     SizedBox(width: 10.w),
                    Text(
                      'Disclamir',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General Disclaimer: Mazziah app \(\"App\"\) is provided on an \"as is\" and \"as available\" basis. The company makes no warranties or representations, express or implied, regarding the accuracy, reliability, or completeness of the information and content provided through the App. The use of the App is at your own risk.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                       SizedBox(height: 20.h),
                      Text(
                        "Merchant Disclaimers: The App allows you to participate in loyalty programs offered by participating merchants. The company does not endorse or guarantee the products, services, or offerings of these merchants. Any issues or disputes arising from your interactions with the merchants are solely between you and the respective merchant. The company disclaims any liability for any loss, damage, or inconvenience caused by the actions or omissions of the participating merchants.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Rewards and Benefits: The company strives to provide accurate and up-to-date information regarding rewards, benefits, and promotions offered through the App. However, the availability, terms, and conditions of these rewards and benefits are subject to change without notice. The company disclaims any responsibility for any discrepancies, errors, or changes in the rewards and benefits provided by the participating merchants.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "User Responsibility: The company does not control or monitor the actions of users of the App. You are solely responsible for your interactions, communications, and transactions with other users or merchants through the App. The company disclaims any liability for any damages, losses, or harm resulting from such interactions or transactions.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.sp),
                      Text(
                        "Third-Party Services: The App may integrate with or provide links to third-party services or websites. The company does not endorse or control these third-party services and disclaims any responsibility for their availability, content, or practices. Your use of third-party services is subject to their respective terms and conditions and privacy policies.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Modification and Termination: The company reserves the right to modify, suspend, or terminate the App or any part thereof at any time without prior notice. The company disclaims any liability for any damages, losses, or inconvenience caused by such modifications, suspensions, or terminations.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Compliance with Laws: While the company endeavors to ensure compliance with applicable laws and regulations, it is your responsibility to comply with all relevant laws and regulations when using the App. The company disclaims any liability for any violations of applicable laws or regulations by users of the App.",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade500,
                      width: 5.w,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 10.h,
                      width: 200.w,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
