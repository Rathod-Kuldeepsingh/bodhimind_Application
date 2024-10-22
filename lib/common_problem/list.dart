// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Depression_content extends StatelessWidget {
  const Depression_content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Depression',
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
                        'Depression is a serious mental health condition characterized by persistent feelings of sadness, hopelessness, and a lack of interest or pleasure in activities once enjoyed. It affects how a person feels, thinks, and behaves, leading to a variety of emotional and physical problems.',
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Biological Factors:\n'
                        'Depression has a genetic component, meaning it can run in families. Hormonal imbalances, particularly in neurotransmitters like serotonin, dopamine, and norepinephrine, can also lead to depression.'
                        ' \n'
                        '\nPsychological Factors:\n'
                        'Trauma, long-term stress, and a negative or pessimistic personality can predispose someone to depression. Conditions like low self-esteem or self-critical thinking patterns can exacerbate the problem.'
                        ' \n'
                        '\nEnvironmental Factors:\n'
                       'External circumstances like loss of a loved one, financial stress, prolonged unemployment, or other life changes (such as moving or changing jobs) may trigger depression.'
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
                        'Chronic Fatigue:\n'
                        'Depression can cause extreme tiredness, making it difficult to perform daily tasks. People with depression may sleep too much or too little, which disrupts the bodys normal rhythm.'
                        ' \n'
                        '\nWeakened Immune System:\n'
                        'Depression has been shown to weaken the immune system, making individuals more vulnerable to infections and illness.'
                        ' \n'
                        '\nDigestive Issues:\n'
                        'Depression can manifest physically as gastrointestinal problems, such as indigestion, nausea, or appetite changes, often leading to weight fluctuations.'
                        '\n'
                        '\nIncreased Risk of Chronic Diseases:\n'
                       'Depression is linked to the development of heart disease, stroke, and diabetes. It increases the production of stress hormones like cortisol, which over time can harm various bodily systems.'
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
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        '\nPsychotherapy:\n'
                       'Cognitive Behavioral Therapy (CBT) helps identify and challenge negative thought patterns. Interpersonal therapy (IPT) can address personal relationships and how they may contribute to depressive symptoms.'
                        '\n'
                        '\nAntidepressant Medications:\n'
                        'Selective Serotonin Reuptake Inhibitors (SSRIs) and other classes of antidepressants help regulate brain chemistry.'
                        '\n'
                        '\nExercise:\n'
                       'Regular physical activity is known to release endorphins, the body’s natural mood lifters, and reduce symptoms of depression.'
                        '\n'
                        '\nMindfulness and Meditation:\n'
                        'Mindfulness-based cognitive therapy (MBCT) and meditation techniques help individuals stay present, reducing negative thoughts and emotional suffering.'
                        '\n'
                        '\nSocial Support:\n'
                        'Maintaining relationships with family, friends, and community members can prevent isolation and provide emotional support.'
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
