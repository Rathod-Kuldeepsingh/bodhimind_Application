import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Emailf extends StatefulWidget {
  const Emailf({super.key});

  @override
  State<Emailf> createState() => _EmailfState();
}

class _EmailfState extends State<Emailf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Lottie.asset("asset/otp.json")),
                const SizedBox(height: 30,),
                const Text(" Forget Password",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600
                ),),
                const SizedBox(height: 10,),
                const Text("  Select one of the option given below to \n               reset your password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300
                ),),
                  const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          size: 25,
                        ),
                        labelText: "  Email ",
                        hintText: "   Email ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        )),
                  ),
                ),
              ),
                const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Otpscreen");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}