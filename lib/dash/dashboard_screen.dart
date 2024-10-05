// ignore_for_file: unused_import, unused_field

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shubham_test/artical/artical.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/book/book.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/common_problem/comm_list.dart';
import 'package:shubham_test/game/psychologicalgame.dart';
import 'package:shubham_test/guided_exe.dart/video.dart';
import 'package:shubham_test/professional%20support/prof_support.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'package:shubham_test/user_authentication/sign_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _auth = Authservice();

  List<String> name = [
    "Common Problem",
    "Professional Support",
    "Guided Exercises",
    "Psychological Game",
    "Maitreya Chatbot",
  ];

  List<Image> icons = [
    Image.asset('asset/strain.png', fit: BoxFit.cover),
    Image.asset('asset/support.png', width: 78),
    Image.asset('asset/hinduist-yoga-position.png', width: 80),
    Image.asset('asset/joystick.png', width: 78),
    Image.asset('asset/robot-assistant.png', width: 78),
  ];

  List<Widget> categoriesscreen = [
    Common_problem(),
    const ProfSupport(),
    const VideoListScreen(),
    const PsychologicalGame(),
    const HomePage(),
  ];

  List<String> imgList = [
    'asset/JK.png',
    'asset/OSho.png',
    'asset/Quotes Instagram Post.png',
    'asset/BUDhha.png',
    'asset/Guru.png',
    'asset/AG.png'
  ];

  int _currentIndex = 0;
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Filter categories based on search text
    List<String> filteredNames = name
        .where((category) => category.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 16),
                child: Row(
                  children: [],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Hello",
                            style: GoogleFonts.archivo(
                                textStyle: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Welcome to Bodhimind ",
                            style: GoogleFonts.archivo(
                                textStyle: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w100,
                                    letterSpacing: 2))),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              searchText = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Search here',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            suffixIcon: Icon(Icons.search, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "All Categories",
                          style: GoogleFonts.ubuntu(
                              textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: GridView.builder(
                        itemCount: filteredNames.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20),
                                
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        categoriesscreen[name.indexOf(filteredNames[index])])),
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: icons[name.indexOf(filteredNames[index])],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    filteredNames[index],
                                    style: const TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      'Wisdom',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            height: 300,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          items: imgList.map((item) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset(item, fit: BoxFit.cover),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage())),
        backgroundColor: const Color.fromARGB(255, 0, 3, 4),
        child: const HugeIcon(
          icon: HugeIcons.strokeRoundedAiChat02,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
}
