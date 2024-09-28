// ignore: unused_import
// ignore_for_file: unused_import, duplicate_ignore

import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/book/book.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/common_problem/comm_list.dart';
// ignore: unused_import
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/game/psychologicalgame.dart';
import 'package:shubham_test/guided_exe.dart/video.dart';

import 'package:shubham_test/otp_screen/email.dart';
import 'package:shubham_test/otp_screen/mobile.dart';
import 'package:shubham_test/professional%20support/prof_support.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
// ignore: unused_import
import 'package:shubham_test/main.dart';
import 'package:shubham_test/user_authentication/sign_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // ignore: unused_field
  final _auth = Authservice();


  List name = [
    //"Resources Library",
    "Common Problem",
    "Professional Support",
    "Guided Exercises",
    "Psychological Game",
    "Maitreya Chatbot",
  ];

  List<Color> colors = [
    // const  Color(0xFF33C4FF),
    // const Color.fromARGB(255, 244, 59, 59),
    // const  Color(0xFF334DFF),
    // const  Color(0xFFFFDC33),
    // const  Color(0xFFBAFF33),
    // const  Color(0xFF33FFE4),
  ];

  List<Image> icons = [
    // Image.asset(
    //   'asset/online-library.png',
    //   width: 78,
    // ),
    Image.asset('asset/strain.png', fit: BoxFit.cover),
    Image.asset(
      'asset/support.png',
      width: 78,
    ),
    Image.asset(
      'asset/hinduist-yoga-position.png',
      width: 80,
    ),
    Image.asset(
      'asset/joystick.png',
      width: 78,
    ),
    Image.asset(
      'asset/robot-assistant.png',
      width: 78,
    ),
  ];

  List categoriesscreen = [
   // const Loginpage(),
    Common_problem(),
    const ProfSupport(),
    const VideoListScreen(),
    const PsychologicalGame(),
    const HomePage()
  ];
  List<String> imgList = [
    'asset/JK.png',
    'asset/OSho.png',
    'asset/Quotes Instagram Post.png',
    'asset/BUDhha.png',
    'asset/Guru.png',
    'asset/AG.png'
  ];

  // ignore: unused_field
  int _currentIndex = 0;

 
  @override
  Widget build(BuildContext context) {
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
              // second column
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Hello,",
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
              //third column

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
              // fourth column
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 380,
                        child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child:  const TextField(
                    // controller: searchController,
                    //   onChanged: _filterCategories,
                  decoration: InputDecoration(
                    hintText: 'Search here',hintStyle: TextStyle(
                      color: Colors.black
                    ),
                    border: InputBorder.none, // Remove borders
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    suffixIcon: Icon(Icons.search, color: Colors.blue), // Custom search icon
                  ),
                ),
                
              ),
            ),
                      ),
                    ],
                  )
                ],
              )
              // five column
              ,
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
                    GridView.builder(
                      itemCount: name.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.2,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      categoriesscreen[index])),
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
                                      // color: colors[index],
                                      // border: Border.all(
                                      //   width: 2,
                                                              
                                      // ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: icons[index],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  name[index],
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text(
                      'Bodhimind Quotes',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
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
                        //this for smooth indicator
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: imgList.asMap().entries.map((entry) {
                        //     return GestureDetector(
                        //       onTap: () => setState(() {
                        //         _currentIndex = entry.key;
                        //       }),
                        //       child: Container(
                        //         width: 20.0,
                        //         height: 10.0,
                        //         margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                        //         decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: Colors.black
                        //               .withOpacity(_currentIndex == entry.key ? 1 : 0.4),
                        //         ),
                        //       ),
                        //     );
                        //   }).toList(),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
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
  // goTohome(BuildContext context) => Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const ()),
  //     );
}
