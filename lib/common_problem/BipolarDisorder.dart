import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bipolardisorder extends StatelessWidget {
  const Bipolardisorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Bipolar Disorder',
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
                        'Bipolar disorder is a mental health condition characterized by significant mood swings that include emotional highs (mania or hypomania) and lows (depression). These mood episodes can affect energy levels, activity, sleep, and the ability to think clearly.'
                        '\n\n1. Manic Episodes: During a manic phase, individuals may feel excessively energized, euphoric, or irritable. They might engage in risky behaviors, have racing thoughts, and experience decreased need for sleep.'
                        '\n\n2. Hypomanic Episodes: Similar to mania but less severe, hypomania involves elevated mood and increased activity but does not significantly impair functioning.'
                        '\n\n3. Depressive Episodes: In contrast, depressive phases can lead to feelings of sadness, hopelessness, and a lack of interest in activities. Individuals may struggle with fatigue, changes in sleep and appetite, and difficulty concentrating.',
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
                        'Genetics: \nBipolar disorder has a strong genetic component.'
                        '\n'
                        '\nNeurochemical imbalances: \nImbalances in brain chemicals such as serotonin, dopamine, and norepinephrine.'
                        '\n'
                        '\nStressful life events: \nMajor life stressors can trigger or exacerbate bipolar disorder symptoms.'
                        '\n'
                        '\nBrain structure abnormalities: \nDifferences in brain structure or function may contribute to bipolar disorder.'
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
                        'Mood swings: \nExtreme fluctuations between manic and depressive episodes.'
                        '\n'
                        '\nImpaired judgment: \nDifficulty making rational decisions during manic episodes.'
                        '\n'
                        '\nRelationship problems: \nBipolar disorder can strain relationships.'
                        '\n'
                        '\nSubstance abuse: \nIncreased risk of substance abuse.'
                        '\n'
                        '\nSuicide risk: \nIndividuals with bipolar disorder are at a higher risk of suicide.'
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
                        'Support groups: \nConnecting with others who have bipolar disorder can provide support and understanding.'
                        '\n'
                        '\nSelf-care: \nRegular exercise, healthy diet, and adequate sleep can help manage symptoms.'
                        '\n'
                        '\nTherapy: \nCognitive-behavioral therapy and interpersonal therapy can help manage symptoms and improve coping skills.'
                        '\n'
                        '\nMedication: \n  Medication can help stabilize mood and reduce symptoms.'
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
