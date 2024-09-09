// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/chatbot/key.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
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
import 'package:shubham_test/user_authentication/wrap.dart';

// firebase auth
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // gemini api key
  Gemini.init(apiKey: GEMINI_API_KEY);

 
  runApp(MaterialApp(
    home: const Splash(),
    routes: {
      "/wrapper": (context) => const Wrapper(),
      "/Loginpage": (context) => const Loginpage(),
      "/Dashboard": (context) => const DashboardScreen(),
      "/Signpage": (context) => const SignScreen(),
      "/Homescreen": (context) => const home_screen(),
      "/Otpscreen": (context) => const OtpScreen(),
      "/Otpscreen1": (context) => const OtpScreen1(),
    },
  ));
}

// ignore: camel_case_types
class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

// ignore: camel_case_types
class _home_screenState extends State<home_screen> {
  final _auth = Authservice();// 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 200,),
           const Center(
                child: Text(
              "welcome",
              style: TextStyle(fontSize: 40),
            )),
             IconButton(onPressed: () async{
                await _auth.signOut();

                goToLogin(context);
             }, icon: const Icon(Icons.login))
          ],
        ));
  }
  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginpage()),
      );
}
