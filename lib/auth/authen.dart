// ignore_for_file: unused_import

import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
  final _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  
   
  

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
 
  Future<User?> loginUserWithEmailAndPassword(String email, String password) async {
  // Example code
  try {
    final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user; // Return user if successful
  } catch (e) {
    // Handle specific error codes if necessary
    throw e; // Rethrow the error to handle in LoginPage
  }
}
 Future<User?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null; // User canceled the sign-in

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);
      return userCredential.user;
    } catch (error) {
      print("Google sign-in error: $error");
      return null;
    }
  }

  // Add other methods as needed...



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

  signInWithGoogle() {}

  
}


