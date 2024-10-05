import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Anxiety',
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
                       'Anxiety involves excessive worry and fear about everyday situations. It’s more than just temporary worry or fear—it’s persistent and can interfere with daily activities. Common anxiety disorders include generalized anxiety disorder (GAD), panic disorder, and social anxiety disorder.',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Genetics:\n'
                     'Anxiety disorders can be hereditary, meaning that individuals with a family history of anxiety are more likely to experience it themselves.'
                      ' \n'
                      '\nBrain Chemistry:\n'
                    'An imbalance of neurotransmitters like serotonin, norepinephrine, and gamma-aminobutyric acid (GABA) can contribute to feelings of anxiety.'
                      ' \n'
                      '\nEnvironmental Stressors:\n'
                     'Major life events like trauma, financial difficulties, or job loss can trigger anxiety. Continuous exposure to stressful situations may result in chronic anxiety.'
                      '\n'
                      '\nPersonality Traits:\n'
                     'People who are naturally more timid, shy, or perfectionistic may be more prone to anxiety disorders.'
                     ,
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
                padding: const EdgeInsets.only(left: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        '\nIncreased Heart Rate:\n'
                        'Anxiety causes the body to activate its fight-or-flight response, leading to an elevated heart rate and high blood pressure, which over time can increase the risk of cardiovascular diseases.'
                        ' \n'

                       '\nRespiratory Issues:\n'
                      'Hyperventilation, or rapid breathing during anxiety attacks, can lead to dizziness, tingling sensations, and shortness of breath.'
                        ' \n'

                        '\nDigestive Problems:\n'
                        'Anxiety is associated with irritable bowel syndrome (IBS) and other digestive disorders. Nausea, upset stomach, and bloating are common.'
                        '\n'

                        '\nWeakened Immune System:\n'
                       'Chronic anxiety increases the production of stress hormones like cortisol, which can suppress immune function and increase susceptibility to infections.'
                        '\n',
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
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '\nCognitive Behavioral Therapy (CBT):\n'
                        'Helps individuals identify irrational fears and replace them with more realistic, balanced thoughts.'
                        '\n'


                        '\nMindfulness Practices:\n'
                       'Techniques like deep breathing, progressive muscle relaxation, and yoga reduce anxiety by calming the nervous system.'
                        '\n'


                        '\nMedications:\n'
                       'SSRIs, benzodiazepines, and beta-blockers may be prescribed to manage anxiety symptoms.'
                        '\n'

                        '\nLifestyle Adjustments:\n'
                      'Regular exercise, a balanced diet, and adequate sleep can greatly reduce anxiety. Limiting caffeine, alcohol, and nicotine also helps prevent anxiety flare-ups.'
                        '\n'

                        '\nExposure Therapy:\n'
                      'For social or specific phobias, gradually exposing individuals to feared situations can reduce anxiety over time.'
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
