// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/dash/demo.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/firebase_options.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'package:shubham_test/user_authentication/sign_screen.dart';
import 'package:shubham_test/onscreen/onboarding_page.dart';
import 'package:shubham_test/otp_screen/email.dart';
import 'package:shubham_test/otp_screen/mobile.dart';
import 'package:shubham_test/otp_screen/otp_s1.dart';
import 'package:shubham_test/otp_screen/otp_s2.dart';
import 'package:shubham_test/splash/splash.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 

  runApp(MaterialApp(
    home: const Splash(),
    routes: {
      "/Loginpage": (context) => const Loginpage(),
      "/Dashboard": (context) => const DashboardScreen(),
      "/Signpage": (context) => const SignScreen(),
      "/Homescreen": (context) => const home_screen(),
      "/Otpscreen": (context) => const OtpScreen(),
      "/Otpscreen1": (context) => const OtpScreen1(),
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
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        "welcome !! ",
        style: TextStyle(fontSize: 32),
      )),
    );
  }
}
