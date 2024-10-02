// ignore_for_file: unnecessary_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/otp_screen/otp_s1.dart';

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Authservice _authService = Authservice(); // Google authentication
  final Authservice _auth = Authservice(); // Email and password authentication

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isVisible = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  String? validateEmail(String? email) {
    final emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    if (email == null || !emailRegex.hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Attempt to sign in the user
        User? user = await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);
        if (user != null) {
          // If successful, navigate to home
          _showSnackBar("Account Login Successfully");
          goToHome(context);
        }
      } catch (e) {
        _showSnackBar("Invalid email or password");
      }
    }
  }

  void goToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Bottomnavigation()),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Lottie.asset("asset/login.json"),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Make it work, Make it right, Make it fast",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_outline_outlined, size: 25),
                          labelText: "Email",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                        ),
                        validator: validateEmail,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _password,
                        obscureText: !_isVisible,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.fingerprint, size: 25),
                          labelText: "Password",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: Icon(_isVisible ? Icons.remove_red_eye : Icons.visibility_off),
                          ),
                        ),
                        validator: (password) => (password != null && password.length < 8)
                            ? 'Please enter a valid password'
                            : null,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/emailif');
                    },
                    child: const Column(
                      children: [
                        Text("Forget Password?", style: TextStyle(fontSize: 14, color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: SizedBox(
                      width: screenWidth * 0.5, // Adjusted for responsiveness
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: _login,
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            child: const Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.7, // Adjusted for responsiveness
                    child: Column(
                      children: [
                        OutlinedButton.icon(
                          onPressed: () async {
                            User? user = (await _authService.loginWithGoogle()) as User?;
                            if (user != null) {
                              _showSnackBar('User signed in: ${user.displayName}');
                              goToHome(context);
                            } else {
                              _showSnackBar('Sign-in failed');
                            }
                          },
                          icon: const Image(image: AssetImage("asset/google.png"), width: 30),
                          label: const Text("Sign In With Google", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Signpage");
                        },
                        child: const Text("Create a new Account?", style: TextStyle(fontSize: 14, color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
