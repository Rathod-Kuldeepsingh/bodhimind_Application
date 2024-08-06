  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shubham_test/auth/authentication_rep.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();


  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final mobile = TextEditingController();
  

  void registrationUser(String email,String password){
    AuthenticationRep.instance.createUserWithEmailAndPAssword(email, password);
  }
}