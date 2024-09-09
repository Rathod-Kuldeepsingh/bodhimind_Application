import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'package:shubham_test/user_authentication/sign_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder:(context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
       return const Center(
        child: CircularProgressIndicator(),
       );
      }
      else if(snapshot.hasError){
       return const Center(child: Text("Error"),);

      }
      else{
       if(snapshot.data == null){
        return const Loginpage();
       
       }
       else{

        return const Bottomnavigation();
        
       }
      }
    },),);
  }
}