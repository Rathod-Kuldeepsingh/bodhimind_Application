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
    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)),
          Lottie.asset("asset/faq.json"),
          const SizedBox(
            height: 80,
          ),
          GradientText(" Mental Health FAQs ",
              style: const TextStyle(
                fontSize: 30,
              ),
              colors: const [
                Colors.blue,
                Colors.red,
                Colors.teal,
              ]),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
               " Understanding and conquering \n              common issues ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                )),
          ),
        ],
      ),
    );
  }
}