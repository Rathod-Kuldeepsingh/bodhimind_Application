// ignore_for_file: unused_import, use_build_context_synchronously

import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/chatbot/key.dart';
import 'package:shubham_test/common_problem/BipolarDisorder.dart';
import 'package:shubham_test/common_problem/Obsessive_Compulsive_Disorder.dart';
import 'package:shubham_test/common_problem/Struggle.dart';
import 'package:shubham_test/common_problem/anxiety.dart';
import 'package:shubham_test/common_problem/behavioral.dart';
import 'package:shubham_test/common_problem/comm_list.dart';
import 'package:shubham_test/common_problem/financial.dart';
import 'package:shubham_test/common_problem/list.dart';
import 'package:shubham_test/common_problem/loneliness.dart';
import 'package:shubham_test/common_problem/phobia.dart';
import 'package:shubham_test/common_problem/self-doubt.dart';
import 'package:shubham_test/common_problem/sleep.dart';
import 'package:shubham_test/common_problem/social-fear.dart';
import 'package:shubham_test/common_problem/sudden_loss.dart';
import 'package:shubham_test/common_problem/work_stress.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/firebase_options.dart';
import 'package:shubham_test/game/psychologicalgame.dart';
import 'package:shubham_test/gamecontent/energy.dart';
import 'package:shubham_test/gamecontent/focus.dart';
import 'package:shubham_test/gamecontent/brainiton.dart';
import 'package:shubham_test/gamecontent/braintest.dart';
import 'package:shubham_test/gamecontent/elevate.dart';
import 'package:shubham_test/gamecontent/hex.dart';
import 'package:shubham_test/gamecontent/infinityloop.dart';
import 'package:shubham_test/gamecontent/mindpal.dart';
import 'package:shubham_test/gamecontent/neuronation.dart';
import 'package:shubham_test/gamecontent/twodots.dart';
import 'package:shubham_test/guided_exe.dart/video.dart';
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
import 'package:video_player/video_player.dart';

// firebase auth
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // gemini api key
  Gemini.init(apiKey: GEMINI_API_KEY);

 
  runApp(MaterialApp(
    home:  const Splash(),
    routes: {
      "/wrapper": (context) => const Wrapper(),
      "/common_problem": (context) =>  Common_problem(),
      "/bottomnavigation": (context) => const Bottomnavigation(),
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
