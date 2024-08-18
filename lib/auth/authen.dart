// ignore_for_file: unused_import

import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
  final _auth = FirebaseAuth.instance;
  
  
   Future<UserCredential?> loginWithGoogle()async{
    try{
     final googleUser = await GoogleSignIn().signIn();

     final googleAuth = await googleUser?.authentication;

     final cred = GoogleAuthProvider.credential(idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken);

     return await _auth.signInWithCredential(cred);
  
    

    }
    catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  
  } 
  

  Future<User?> createUserWithEmailAndPAssword(
      String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user;
    } catch (e) {
      //log("Something went Wrong");
    }
    return null;
  }
 
  Future<User?> loginUserWithEmailAndPAssword(
    String email,
    String password,
  ) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      if (kDebugMode) {
        print("Something went Wrong");
      }
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      if (kDebugMode) {
        print("Something went Wrong");
      }
    }
  }

  

  signInWithEmailAndPassword(
      {required String email,
      required String password,
    }) {}
}

