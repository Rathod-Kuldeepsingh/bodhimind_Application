import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/auth/signup_controller.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/login_sign.dart/login_screen.dart';
import 'package:shubham_test/main.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}


class _SignScreenState extends State<SignScreen> {
   
   final _auth= Authservice();

    final _email = TextEditingController();
    final _password = TextEditingController();
    final _fullname = TextEditingController();
   final _mobile = TextEditingController();
   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _password.dispose();
    _mobile.dispose();
    _fullname.dispose();
  }
  @override
  Widget build(BuildContext context) {
   
  //  final controller = Get.put(SignupController());
    // final _formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
           // key: _formkey,
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
                const SizedBox(height: 30),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: TextFormField(
                      controller: _fullname,
                      // controller: controller.fullname,
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
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: TextFormField(
                      controller:_email ,
                      keyboardType: TextInputType.emailAddress,
                    //      controller: controller.email,
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
                const SizedBox(height: 30),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.number,
                        //  controller: controller.mobile,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person_outline_outlined,
                            size: 25,
                          ),
                          labelText: " Mobile Number",
                          hintText: "  Mobile Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: TextFormField(
         controller: _password,
                          //controller: controller.password,
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
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Center(
                    child: SizedBox(
                      width: 210,
                      child: ElevatedButton(
                        onPressed: () =>
                          _signup()
                          /*() {
                          if(_formkey.currentState!.validate()){
                            SignupController.instance.registrationUser(controller.email.text.trim(),controller.password.text.trim());
                          }

                        }*/,
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
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage("asset/google.png"), width:30,
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
                const SizedBox(height: 30,),
                  Center(
                    child: TextButton(onPressed: (){
                      Navigator.pushNamed(context,"/Loginpage");
                    }, child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Already have an Accounr?",style: TextStyle(color: Colors.black,fontSize: 17)),
                          TextSpan(text: " Login",style: TextStyle(color: Colors.blue,fontSize: 17)),
                        ]
                      )
                    )),
                  )
              ],
            ),
          ),
        ),
      ),
    );
     
  }
  goToLogin(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Loginpage()),
      );
   goTohome(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Homescreen()),
      );
     // ignore: dead_code
     _signup()async{
      final user = await _auth.createUserWithEmailAndPAssword(_email.text,_password.text);
      if(user != null){
        // log("user is created succesful" as num);
         goTohome(context);
        
      }
    }
   
}
  