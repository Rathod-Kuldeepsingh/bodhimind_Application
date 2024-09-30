import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen3 extends StatefulWidget {
  const Sceen3({super.key});

  @override
  State<Sceen3> createState() => _Sceen3State();
}

class _Sceen3State extends State<Sceen3> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 32)), // Static top padding
          Lottie.asset("asset/booster.json"),
          SizedBox(
            height: screenHeight * 0.1, // Responsive spacing
          ),
          const SizedBox(height: 5,),
          GradientText(
            " Brain Boosters ",
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
                  " Play your way to peace of mind ",
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
