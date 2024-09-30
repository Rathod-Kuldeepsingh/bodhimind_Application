import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

class Sceen4 extends StatefulWidget {
  const Sceen4({super.key});

  @override
  State<Sceen4> createState() => _Sceen4State();
}

class _Sceen4State extends State<Sceen4> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height; // Get screen height
    final screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)), // Static top padding
          Lottie.asset("asset/faq.json"),
          SizedBox(
            height: screenHeight * 0.1, // Responsive spacing
          ),
          GradientText(
            " Mental Health FAQs ",
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
              " Understanding and conquering common issues ",
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
