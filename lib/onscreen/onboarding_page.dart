import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/Get_started/get_stared.dart';
import 'package:shubham_test/onscreen/on_screen1.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:shubham_test/onscreen/on_screen2.dart';
import 'package:shubham_test/onscreen/on_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shubham_test/onscreen/on_screen4.dart';
import 'package:shubham_test/onscreen/on_screen5.dart';
import 'package:shubham_test/onscreen/on_screen6.dart';

class OnboardigPage extends StatefulWidget {
  const OnboardigPage({super.key});
  @override
  State<OnboardigPage> createState() => _OnboardigPageState();
}

class _OnboardigPageState extends State<OnboardigPage> {
  PageController pageController = PageController();
  String buttonText = "Skip";
  int nextPage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  nextPage = index;
                  if (index == 5) {
                    buttonText = "Finish";
                  } else {
                    buttonText = "Skip";
                  }
                  setState(() {

                  });
                },
                children: const [
                  Sceen1(),
                  Sceen2(),
                  Sceen3(),
                  Sceen4(),
                  Sceen5(),
                  Sceen6(),
                ],
              ),
              Container(
                alignment: const Alignment(0, 0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const GetStart();
      },
    ));
                        },
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        )),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 6,
                    ),
                    nextPage == 5
                        ? const SizedBox(
                            width: 10,
                          )
                        : GestureDetector(
                            onTap: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}