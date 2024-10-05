// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shubham_test/onscreen/onboarding_page.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/user_authentication/wrap.dart';
import "package:simple_gradient_text/simple_gradient_text.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 10), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Wrapper()));
  }

  @override
  Widget build(BuildContext context) {
   // Get screen height

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content
            children: [
               Padding(
                  padding: const EdgeInsets.all(0),
                  child: Lottie.asset('asset/kuldeep.json'),
                ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
