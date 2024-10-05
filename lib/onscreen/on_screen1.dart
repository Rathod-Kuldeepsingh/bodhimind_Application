// ignore_for_file: unused_local_variable

import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen1 extends StatefulWidget {
  const Sceen1({super.key});

  @override
  State<Sceen1> createState() => _Sceen1State();
}

class _Sceen1State extends State<Sceen1> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)), // Static top padding
          Lottie.asset("asset/s.json"),
          SizedBox(
            height: screenHeight * 0.1, // Responsive spacing
          ),
          GradientText(
            " Maitreya ",
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
            height: screenHeight * 0.05, // Responsive spacing
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Column(
              children: [
                Text(
                  " Here The Voice Of Wisdom, Discover \n         Serenity with Every Chat",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center, // Center text alignment
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
