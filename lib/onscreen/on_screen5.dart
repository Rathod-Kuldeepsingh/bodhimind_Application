import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen5 extends StatefulWidget {
  const Sceen5({super.key});

  @override
  State<Sceen5> createState() => _Sceen5State();
}

class _Sceen5State extends State<Sceen5> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 70)), // Static top padding
          Lottie.asset("asset/pro.json"),
          SizedBox(
            height: screenHeight * 0.15, // Responsive spacing
          ),
          const SizedBox(
            height: 30,
          ),
          GradientText(
            " Professional Support ",
            style: const TextStyle(
              fontSize: 30,
            ),
            colors: const [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              " Personalized guidance for your well-being ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center, // Center text alignment
            ),
          ),
        ],
      ),
    );
  }
}
