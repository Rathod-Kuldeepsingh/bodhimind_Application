import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';

class OtpScreen1 extends StatefulWidget {
  const OtpScreen1({super.key});

  @override
  State<OtpScreen1> createState() => _OtpScreen1State();
}

class _OtpScreen1State extends State<OtpScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("asset/for_otp.json"),
              const SizedBox(height: 30,),
              const Center(
                child:Text("Enter the Verification code sent at the ""example:1234567890"
                ,textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),
              ),
              const SizedBox(height: 30,),
              OtpTextField(
                onSubmit: (code){
                  print("Otp is =>$code");
                },
                keyboardType: TextInputType.number,
                 numberOfFields: 4,
                 fillColor: Colors.black.withOpacity(0.3),
                // filled: true, this is use for box 
              ),
             const  SizedBox(
                height: 80,
              ),
                SizedBox(
                  width: 200,
                 child: ElevatedButton(onPressed: (){
                   
                 },
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                  ),
                   child: const Text("Submit",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                   ),),),
               ),
            ],
          ),
        ),
      ),
    );
  }
}