

import 'package:flutter/material.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/login_sign.dart/login_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
   final  _auth = Authservice();
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 400),
          child: Column(
            children: [
             const Text("Welcome to the Bodhimid",style: TextStyle(fontSize: 30),),
             
             const SizedBox(height: 40,),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed:()async{
                      await _auth.signOut();
                      goToLogin(context);
                } , child: const Text("Signout",style: TextStyle(fontSize: 20))),
              ),
            ],
          ),
        ),
      )
      
    );
  }
  goToLogin(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Loginpage()),
      );
       goTohome(BuildContext context)=> Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Homescreen()),
      );
}
  