// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';

class Thank extends StatelessWidget {
  const Thank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0,left: 20,right: 20),
                child: Column(
                  children: [
                  Lottie.asset('asset/otp.json')
                  ],
                ),
              ),
              SizedBox
              (height: 100,),
              Column(
                children: [
                  Text("Password reset email sent! Please check your inbox.",
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    )
                  ),
                  textAlign: TextAlign.justify,),
                ],
              ),
              Column(
                children: [
                   const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Add your logic to navigate to the login screen or handle forgotten password
                 Navigator.pushNamed(context, '/Loginpage'); // Navigate back to the previous screen
                },
                child: const Text(
                  "Back to Login",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}