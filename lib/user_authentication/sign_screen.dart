// ignore_for_file: unused_import

import 'dart:ffi';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/demo/auth.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'package:shubham_test/main.dart';
import 'package:shubham_test/otp_screen/otp_s2.dart';

final _formkey = GlobalKey<FormState>();

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final _auth = Authservice();


 final AuthService _authService = AuthService();// google authentication
 
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _fullname = TextEditingController();
  final _mobile = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
    _mobile.dispose();
    _fullname.dispose();
  }

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please Enter the a valid email';
    }
    return null;
  }

  bool _isVisible = false;
// validation for name

  String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    } else if (name.length < 3) {
      return 'Name must be at least 3 characters long';
    }
    return null;
  }

  String? validateMobile(String? mobile) {
    if (mobile == null || mobile.isEmpty) {
      return 'Mobile number is required';
    } else if (mobile.length != 10) {
      return 'Mobile number must be 10 digits long';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      return 'Password must contain at least one digit';
    } else if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      // Process the sign-up (e.g., send data to the server)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Login Successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lottie.asset("asset/sign.json"),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  "Create New Account ",
                  style: TextStyle(fontSize: 25),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Create your profile to start your journey. ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                )),
                const SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: _fullname,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person_outline_outlined,
                            size: 25,
                          ),
                          labelText: " Full Name",
                          hintText: "  Full Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                      validator: validateName,
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email_outlined,
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
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mobile_friendly_outlined,
                            size: 25,
                          ),
                          labelText: " Mobile Number",
                          hintText: "  Mobile Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                      validator: validateMobile,
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: _password,
                      obscureText: _isVisible,
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
                      validator: validatePassword,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Center(
                    child: SizedBox(
                      width: 210,
                      child: ElevatedButton(
                        onPressed: () {
                          _submitForm();
                          _signup();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          "Signup",
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
                const Center(
                    child: Text(
                  "OR",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )),
                const SizedBox(
                  height: 10,
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
                  height: 30,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Loginpage");
                      },
                      child: const Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Already have an Accounr?",
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                        TextSpan(
                            text: " Login",
                            style: TextStyle(color: Colors.blue, fontSize: 17)),
                      ]))),
                )
              ],
            ),
          ),
        ),
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

  _signup() async {
    final user =
        await _auth.createUserWithEmailAndPAssword(_email.text, _password.text);
    if (user != null) {
      // log("user is created succesful" as num);
      goTohome(context);

      addUserDetails(_fullname.text.trim(), int.parse(_mobile.text.trim()),
          _email.text.trim(), _password.text.trim());
    }
  }

  Future<void> addUserDetails(
      String fullname, int number, String email, String password) async {
    await FirebaseFirestore.instance.collection('users').add({
      'Fullname': fullname,
      'Mobile Number': number,
      'email': email,
      'password': password,
    });
  }
}