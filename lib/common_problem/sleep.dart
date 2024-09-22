import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Sleep Disorders',
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
                        'Sleep disorders are a group of conditions that disrupt normal sleep patterns, affecting both the quantity and quality of sleep. Common types include insomnia (difficulty falling or staying asleep), sleep apnea (interrupted breathing during sleep), restless legs syndrome (an uncontrollable urge to move the legs), and narcolepsy (excessive daytime sleepiness and sudden sleep attacks).',
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
                        'Lifestyle factors: \nIrregular sleep schedules, excessive caffeine or alcohol consumption, and exposure to electronic devices before bed.'
                        '\n'
                        '\nMedical conditions: \nUnderlying medical conditions such as sleep apnea, restless legs syndrome, or chronic pain can disrupt sleep.'
                        '\n'
                        '\nMental health issues: \nDepression, anxiety, and stress can interfere with sleep.'
                        '\n'
                        '\nMedication: \nCertain medications can cause sleep disturbances.'
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
                        'Physical symptoms: \nFatigue, difficulty concentrating, irritability, and increased risk of accidents.'
                        ' \n'
                        '\nMental health issues: \nDepression, anxiety, and mood disorders.'
                        ' \n'
                        '\nChronic diseases: \nSleep deprivation can increase the risk of chronic diseases such as heart disease, diabetes, and obesity.'
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
                        'Sleep hygiene: \nEstablish a regular sleep schedule, create a relaxing bedtime routine, and avoid stimulants before bed.'
                        '\n'
                        '\nMedical evaluation: \nConsult a doctor to rule out underlying medical conditions that may be affecting sleep.'
                        '\n'
                        '\nTherapy: \nCognitive-behavioral therapy can help address sleep-related thoughts and behaviors.'
                        '\n'
                        '\nMedication: \nIn some cases, medication may be prescribed to treat sleep disorders.'
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
        ));
  }
}
