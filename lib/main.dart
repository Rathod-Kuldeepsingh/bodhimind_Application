import 'package:shubham_test/login_sign.dart/login_screen.dart';
import 'package:shubham_test/login_sign.dart/sign_screen.dart';
import 'package:shubham_test/onboarding_page.dart';
import 'package:shubham_test/otp_screen/email.dart';
import 'package:shubham_test/otp_screen/mobile.dart';
import 'package:shubham_test/otp_screen/otp_s1.dart';
import 'package:shubham_test/otp_screen/otp_s2.dart';
import 'package:shubham_test/splash.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    home: const Splash(),
     routes: {
      "/Loginpage": (context) => const Loginpage(),
      "/Signpage":  (context) => const SignScreen(),
      "/Homescreen": (context) => const home_screen(),
      "/Otpscreen": (context) => const  OtpScreen(),
      "/Otpscreen1": (context) => const  OtpScreen1(),
    },
  ));
}

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("helloo kaise Ho !! ",style: TextStyle(fontSize: 32),),
    );
  }
}