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
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Lottie.asset("asset/getstarted.json")),
            GradientText(" Welcome to Bodhimind ",
                style: const TextStyle(
                  fontSize: 30,
                ),
                colors: const [
                  Colors.blue,
                  Colors.red,
                  Colors.teal,
                ]),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Mental Health Support \n    Anytime,Anywhere",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 90),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                  
                  onPressed: () {
                     Navigator.pushNamed(context,"/Loginpage");
                  },
                  style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
        
                  ),),

            ),
            const SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 50 , right: 0),
                  child: GestureDetector(onTap: (){}, child: const Text.rich(
                    TextSpan(
                      text: "By Continuing,you agree to Bodhimind, ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Terms & Condition and Privacy Policy"
                         ,
                          style: TextStyle(color: Colors.blue),
                        )
                      ]
                    ),
                  ),
                  ),
                ),
          ],
        ));
  }
}