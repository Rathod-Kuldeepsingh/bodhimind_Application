// ignore: unnecessary_import
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:get/route_manager.dart';
// ignore: unused_import
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
// ignore: unused_import
import 'package:shubham_test/dash/dashboard_screen.dart';
// ignore: unused_import
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/demo/auth.dart';
import 'package:shubham_test/otp_screen/otp_s1.dart';
import 'package:shubham_test/otp_screen/otp_s2.dart';

final _formke1 = GlobalKey<FormState>();

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {


  final AuthService _authService = AuthService();// google authentication


  
  final _auth = Authservice();// email and password authentication


  // its variable to take data from user 
  final _email = TextEditingController();
  final _password = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }
 

   //validation email 
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please Enter the a valid email';
    }
    return null;
  }

  void _submitForm() {
    if (_formke1.currentState!.validate()) {
      // Process the sign-up (e.g., send data to the server)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Login Successfully')),
      );
    }
  }


  // visible password function
  bool _isVisible = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
          key: _formke1,// validation form key check valid data in form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Lottie.asset("asset/login.json")),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Welcome Back !",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  )),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Make it work,Make it right,Make it fast",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  )),
              const SizedBox(height: 10),
              SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _email, // take data form user
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
                    validator: validateEmail,
                  ),
                ),
              ),
              SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: _password,// take data form user
                    obscureText: _isVisible, // password visible function
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
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? const Icon(
                                Icons.remove_red_eye_sharp,
                                size: 20,
                              )
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                    validator: (password) => password!.length < 8
                        ? 'Please Enter the valid Password '
                        : null,
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
                      showModalBottomSheet( // for show model
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
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                                      fontWeight:
                                                          FontWeight.w500),
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
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      onPressed: () {
                        _formke1.currentState!.validate();
                        _login();
                        _submitForm();
                      },
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
              ),
                const SizedBox(
                height: 20,
              ),
                Center(
                  child: SizedBox(
                    width: 210,
                    child: OutlinedButton.icon(
                        onPressed: () async {
                User? user = await _authService.signInWithGoogle();
                if (user != null) {
                  print('User signed in: ${user.displayName}');
                } else {
                  print('Sign-in failed');
                }
              },
                        icon: const Image(
                          image: AssetImage("asset/google.png"),
                          width: 30,
                        ),
                        label: const Text(
                          "Sign With Google",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
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
          ),
        )),
      ),
    );
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginpage()),
      );
  goTohome(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const  Bottomnavigation()),
      );
  _login() async {
    final user =
        await _auth.loginUserWithEmailAndPAssword(_email.text, _password.text);
    if (user != null) {
      //log("user is created succesful" as num);
      goTohome(context);
    }
  }



}
