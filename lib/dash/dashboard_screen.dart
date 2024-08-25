import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shubham_test/auth/authen.dart';
// ignore: unused_import
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
// ignore: unused_import
import 'package:shubham_test/main.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                       const Divider(
                        
                       );
                      },
                      icon: const Icon(
                        Icons.menu_outlined,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notification_add_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        onPressed: () async {
                          await _auth.signOut();
                          goToLogin(context);
                        },
                        icon: const Icon(
                          Icons.exit_to_app,
                          size: 30,
                        ),
                      ),
                    )
                  ],
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
                    padding: const EdgeInsets.only(left: 10),
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
                    padding: const EdgeInsets.only(left: 10),
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
                            height: 50,
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
                                          TextStyle(color: Colors.black)),
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
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
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
