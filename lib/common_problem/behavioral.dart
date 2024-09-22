import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Behavioral extends StatelessWidget {
  const Behavioral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Behavioral Issues',
              style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight: FontWeight.w700))),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Description :",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Behavioral issues refer to a range of actions and patterns that are disruptive, challenging, or problematic in social, academic, or home environments. These can manifest as aggression, defiance, impulsivity, or difficulty following rules and routines. Behavioral issues may stem from various factors, including emotional distress, environmental influences, or underlying mental health conditions.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Causes :",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Mental health conditions: \n'
                        'Underlying conditions such as ADHD, autism, or depression can contribute to behavioral issues.'
                        '\n'
                        '\nEnvironmental factors:  \n'
                        'Stressful home or school environments, exposure to violence, or substance abuse can affect behavior.'
                        '\n'
                        '\nDevelopmental delays:\n'
                        'Difficulties in social, emotional, or cognitive development can lead to behavioral problems.'
                        '\n'
                        '\nGenetics: \n'
                        'Inherited traits or predispositions can influence behavior.'
                        '\n',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "How it Harms the Body :",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Physical injuries: \n'
                        'Aggressive or impulsive behavior can lead to physical harm.'
                        ' \n'
                        '\nSocial isolation:\n'
                        'Behavioral issues can strain relationships and lead to social withdrawal.'
                        ' \n'
                        '\nAcademic difficulties: \n'
                        ' Difficulty concentrating or following rules can impact academic performance.'
                        '\n'
                        '\nLegal problems: \n'
                        'Behavioral problems can lead to legal consequences.'
                        '\n',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Solution :",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                       'Behavior therapy:\n Learn to identify and modify problematic behaviors.'
                        '\n'
                       '\nFamily therapy: \n'
                       'Address family dynamics and improve communication.'
                        '\n'
                        '\nSupport groups:\n'
                        'Connect with other families facing similar challenges.'
                        '\n'
                        '\nEarly intervention: \n'
                        ' Seek help early to prevent behavioral problems from escalating.'
                        '\n'
                        '\nMedication:\n'
                        'In some cases, medication may be helpful in managing underlying mental health conditions or behavioral symptoms.'
                        '\n'
                        '\n',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}