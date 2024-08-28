import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shubham_test/auth/authen.dart';
// ignore: unused_import
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/otp_screen/email.dart';
import 'package:shubham_test/otp_screen/mobile.dart';
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
  final _auth = Authservice();

  List name = [
    "Resources Library",
    "Common Problem",
    "Professional Support",
    "Guided Exercises",
    "Psychological Game",
    "AI Chatbot"
  ];


  List<Color> colors =[
    const  Color(0xFF33C4FF),
    const  Color(0xFFFF6D33),
    const  Color(0xFF334DFF),
    const  Color(0xFFFFDC33),
    const  Color(0xFFBAFF33),
    const  Color(0xFF33FFE4),
  ];


  List<HugeIcon> icons = [
    const HugeIcon(
      icon: HugeIcons.strokeRoundedResourcesAdd,
      color: Colors.white,
      size: 60,
    ),
    const HugeIcon(
      icon: HugeIcons.strokeRoundedHealtcare,
      color: Colors.white,
      size: 60,
      
    ),
    const HugeIcon(
      icon: HugeIcons.strokeRoundedComputerProtection,
      color: Colors.white,
      size: 60,
    ),
    const HugeIcon(
      icon: HugeIcons.strokeRoundedVideo02,
      color: Colors.white,
      size: 60,
    ),
    const HugeIcon(
      icon: HugeIcons.strokeRoundedGame,
      color: Colors.white,
      size: 60,
    ),
     const HugeIcon(
      icon: HugeIcons.strokeRoundedAiChat01,
      color: Colors.white,
      size: 60,
    ),
  ];

  List categoriesscreen =[
   const Loginpage(),
   const OtpScreen(),
   const SignScreen(),
   const OtpScreen1(),
   const home_screen()
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 430,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 232, 232),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              width: 430,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      iconColor: Colors.black,
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 30,
                                      ),
                                      hintText: "Search Here...",
                                      hintStyle:
                                          TextStyle(color: Color.fromARGB(255, 33, 33, 33),)),
                                ),
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
                  children: [
                    GridView.builder(
                      itemCount: name.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>categoriesscreen[index])),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: colors[index],
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
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),




      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 3, 138, 248),
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginpage()),
      );
  // goTohome(BuildContext context) => Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const ()),
  //     );
}
