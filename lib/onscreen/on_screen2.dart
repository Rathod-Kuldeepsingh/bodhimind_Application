import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen2 extends StatefulWidget {
  const Sceen2({super.key});

  @override
  State<Sceen2> createState() => _Sceen2State();
}

class _Sceen2State extends State<Sceen2> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 150)), // Static top padding
          Lottie.asset("asset/library.json"),
          SizedBox(
            height: screenHeight * 0.15, // Responsive spacing
          ),
          const SizedBox(height: 32,),
          GradientText(
            "Bodhi Library",
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
            height: 30,
          ),
          const Center(
            child: Column(
              children: [
                Text(
                  " Empowering minds with knowledge ",
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
