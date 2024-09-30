import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.05, // Responsive top spacing
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding
            child: Lottie.asset("asset/getstarted.json"),
          ),
          GradientText(
            " Welcome to Bodhimind ",
            style: const TextStyle(
              fontSize: 30,
            ),
            colors: const [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02, // Responsive spacing
          ),
          const Text(
            "Mental Health Support \n    Anytime, Anywhere",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center, // Center text alignment
          ),
          SizedBox(height: screenHeight * 0.1), // Responsive spacing
          SizedBox(
            width: screenWidth * 0.9, // Responsive button width
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Loginpage");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.06), // Responsive spacing
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1), // Responsive padding
            child: GestureDetector(
              onTap: () {},
              child: const Text.rich(
                TextSpan(
                  text: "By Continuing, you agree to Bodhimind, ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Terms & Condition and Privacy Policy",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
