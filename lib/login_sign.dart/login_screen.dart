
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/otp_screen/otp_s1.dart';
import 'package:shubham_test/otp_screen/otp_s2.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _auth = Authservice();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Lottie.asset("asset/login.json")),
            const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Welcome Back !",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )),
            const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "Make it work,Make it right,Make it fast",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )),
            const SizedBox(height: 30),
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person_outline_outlined,
                        size: 25,
                      ),
                      labelText: "  Email",
                      hintText: "  Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.fingerprint,
                      size: 25,
                    ),
                    labelText: "  Password",
                    hintText: "  Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye_sharp,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight, // for use to right side align
              child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                            width: 450,
                            height: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    " Forget Password ",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    " Select the one option given below to reset \n  your password ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    width: 370,
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.mail_lock_outlined,
                                          size: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) {
                                                    return const Emailf();
                                                  },
                                                ));
                                              },
                                              child: const Text(
                                                "   E-mail\n   Reset via E-mail Verification",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    width: 370,
                                    padding: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.mobile_friendly_outlined,
                                          size: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                 Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) {
                                                    return const Mobile();
                                                  },
                                                ));
                                              },
                                              child: const Text(
                                                "   Mobile Numberl\n   Reset via Mobile Verification",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                        backgroundColor: Colors.white);
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () =>
                          _login(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Signpage");
                },
                child: const Text(
                  "Create a new Account ?",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
  goToLogin(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Loginpage()),
      );
   goTohome(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Homescreen()),
      );
   _login()async{
      final user = await _auth.loginUserWithEmailAndPAssword(_email.text,_password.text);
      if(user != null){
        //log("user is created succesful" as num);
         goTohome(context);
        
      }
    }
}
