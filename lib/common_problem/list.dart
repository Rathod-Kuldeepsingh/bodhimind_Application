import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kuldeep extends StatelessWidget {
  const Kuldeep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text('List Content',
            style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700))),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/common_problem'),
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Text("Coming Soon Please Wait",
        style: GoogleFonts.openSans(
        textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600
        )
        ),),
      ),
    );
  }
}