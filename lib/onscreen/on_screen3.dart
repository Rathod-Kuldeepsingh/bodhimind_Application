

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
    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 32)),
          Lottie.asset("asset/booster.json"),
          const SizedBox(
            height: 80,
          ),
          GradientText(" Brain Boosters ",
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
                " Play your way to peace of mind ",
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