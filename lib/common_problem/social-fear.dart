import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Socialfear extends StatelessWidget {
  const Socialfear({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Social-fear',
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
                        'Social fear, often referred to as social anxiety, is an intense apprehension or fear of social situations where one might be scrutinized, judged, or embarrassed. Individuals experiencing this fear may worry excessively about how they are perceived by others, leading to avoidance of social interactions, public speaking, or even everyday activities like eating in public. Symptoms can include rapid heartbeat, sweating, blushing, and a strong desire to escape the situation. This fear can significantly impact personal relationships, career opportunities, and overall quality of life. Overcoming social fear often involves therapy, gradual exposure to social situations, and developing coping strategies.',
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
                        'Fear of rejection:\n'
                        ' Worrying about being judged or disliked by others.'
                        '\n'
                        '\nFear of embarrassment: \n'
                        'Avoiding social situations due to a fear of making mistakes or appearing foolish.'
                        '\n'
                        '\nPast negative experiences: \n'
                        'Having negative social interactions in the past that have led to fear.'
                        '\n'
                        '\nShyness:\n'
                        'Having a naturally reserved or introverted personality.'
                        '\n'
                        '\nSocial anxiety disorder: \nA mental health condition characterized by intense fear of social situations.'
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
                        'Physical symptoms:  \n'
                        'Rapid heartbeat, sweating, blushing, and difficulty breathing.'
                        ' \n'
                        '\nMental health issues: \n'
                        'Depression, anxiety, and low self-esteem.'
                        ' \n'
                        '\nIsolation:  \n'
                        'Avoiding social activities and relationships due to fear.'
                        '\n'
                        '\nImpaired performance: \n'
                        'Difficulty concentrating or performing well in social situations.'
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
                       'Gradual exposure: \n Gradually expose oneself to social situations to overcome fear.'
                        '\n'
                       '\nCognitive-behavioral therapy (CBT): \n'
                       'Learn to manage negative thoughts and behaviors related to social fear.'
                        '\n'
                        '\nSocial skills training: \n'
                        'Develop and practice social skills to improve interactions with others.'
                        '\n'
                        '\nSupport groups: \n'
                        'Connect with others who have similar experiences and share coping strategies.'
                        '\n'
                        '\nMedication:\n'
                        'In some cases, medication may be helpful in managing social anxiety symptoms.'
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