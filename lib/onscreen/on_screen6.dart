import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen6 extends StatefulWidget {
  const Sceen6({super.key});

  @override
  State<Sceen6> createState() => _Sceen6State();
}

class _Sceen6State extends State<Sceen6> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)), // Static top padding
          Lottie.asset("asset/s6.json"),
          SizedBox(
            height: screenHeight * 0.1, // Responsive spacing
          ),
          const SizedBox(
            height: 8,
          ),
          GradientText(
            " Guided Practices ",
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
              " Develop clarity, Balance and peace ",
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
