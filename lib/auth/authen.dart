// ignore_for_file: unused_import

import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class Authservice {
  final _auth = FirebaseAuth.instance;

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
      required String fullname}) {}
}
