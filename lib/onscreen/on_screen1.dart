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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)),
          Lottie.asset("asset/s.json"),
          const SizedBox(
            height: 80,
          ),
          GradientText(" Maitreya ",
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
                " Here The Voice Of Wisdom, Discover \n         Serenity with Every Chat",
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