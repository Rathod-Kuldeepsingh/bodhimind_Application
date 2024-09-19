import 'package:flutter/material.dart';
import 'package:shubham_test/onscreen/onboarding_page.dart';
import 'package:lottie/lottie.dart';
import 'package:shubham_test/user_authentication/wrap.dart';
import "package:simple_gradient_text/simple_gradient_text.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

   @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


  _navigatetohome() async{
     await Future.delayed( const Duration(seconds: 5),(){});
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const Wrapper()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children:[
              Padding(
                padding: const  EdgeInsets.only(top: 350),
               child: Padding(
                padding: const EdgeInsets.all(10),
                child: Lottie.asset("asset/splash.json")),
                
             ),
           GradientText("Bodhimind",
              style: const TextStyle(
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.w600
              ),
              colors: const [
                Colors.blue,
                Colors.red,
                Colors.teal,
              ]),
         ], ),
        ),
      )
    );
  }
}