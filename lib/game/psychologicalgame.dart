import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/common_problem/comm_list.dart';
import 'package:shubham_test/gamecontent/betwixt.dart';
import 'package:shubham_test/gamecontent/brainiton.dart';
import 'package:shubham_test/gamecontent/braintest.dart';
import 'package:shubham_test/gamecontent/elevate.dart';
import 'package:shubham_test/gamecontent/energy.dart';
import 'package:shubham_test/gamecontent/finch.dart';
import 'package:shubham_test/gamecontent/focus.dart';
import 'package:shubham_test/gamecontent/hex.dart';
import 'package:shubham_test/gamecontent/infinityloop.dart';
import 'package:shubham_test/gamecontent/mindpal.dart';
import 'package:shubham_test/gamecontent/neuronation.dart';
import 'package:shubham_test/gamecontent/twodots.dart';
import 'package:shubham_test/guided_exe.dart/video.dart';
import 'package:shubham_test/main.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'package:shubham_test/user_authentication/sign_screen.dart';

class PsychologicalGame extends StatefulWidget {
  const PsychologicalGame({super.key});

  @override
  State<PsychologicalGame> createState() => _PsychologicalGameState();
}

class _PsychologicalGameState extends State<PsychologicalGame> {
   List name = [
    "NeuroNation",
    "Elevate",
    "Betwixt",
    'Finch',
    'Energy',
    'Hex',
    'MindPal',
    'Two Dots',
    'Focus',
    'Infinity Loop',
    'Brain It On',
    'Brain Test'
  ];

  List categoriesscreen = [
    const Neuronation(),
    const Elevate(),
    const Betwixt(),
    const Finch(),
    const Energy(),
    const Hex(),
    const Mindpal(),
    const Twodots(),
    const Focusgame(),
    const Infinityloop(),
    const Brainiton(),
    const Braintest()
  ];

  List<Image> icons = [
    Image.asset(
      'asset/neuro.png',
      fit: BoxFit.cover,
    ),
    Image.asset('asset/elevate.jpeg', fit: BoxFit.cover),
    Image.asset(
      'asset/betwixt.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/finch.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/unnamed.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/hex.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/pal.jpg',
       fit: BoxFit.cover,
    ),
    Image.asset('asset/two.png', fit: BoxFit.cover),
    Image.asset(
      'asset/focus.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/loop.webp',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/brainit.png',
     fit: BoxFit.cover,
    ),
    Image.asset(
      'asset/test.avif',
       fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Psychological Game',
          style: GoogleFonts.openSans(
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.builder(
                    itemCount: name.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.3,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 20,
                            ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => categoriesscreen[index])),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    // color: colors[index],
                            
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: icons[index],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  name[index],
                                  style: const TextStyle(
                                      fontSize: 17, fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}