import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObsessiveCompulsiveDisorder extends StatelessWidget {
  const ObsessiveCompulsiveDisorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Obsessive-Compulsive Disorder',
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
                        'Obsessive-Compulsive Disorder (OCD) is a mental health condition characterized by persistent, unwanted thoughts (obsessions) and repetitive behaviors or mental acts (compulsions) that individuals feel driven to perform in response to those thoughts.',
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
                        'Genetics: \nOCD has a strong genetic component.'
                        '\n'
                        '\nNeurochemical imbalances: \nImbalances in brain chemicals such as serotonin and dopamine.'
                        '\n'
                        '\nBrain structure abnormalities: \nDifferences in brain structure or function may contribute to OCD'
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
                        'Intrusive thoughts: \nObsessions, which are persistent, unwanted thoughts, images, or urges that can cause distress or anxiety.'
                        '\n'
                        '\nCompulsions: \nRepetitive behaviors or mental acts that individuals feel compelled to perform to reduce anxiety or prevent negative outcomes.'
                        '\n'
                        '\nImpaired functioning: \nOCD can significantly interfere with daily activities, relationships, and overall quality of life.'
                        '\n'
                        '\nPhysical symptoms: \nOCD can lead to physical symptoms such as fatigue, headaches, and muscle tension due to the constant mental and emotional stress.'
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
                        'Medication: \nAntidepressants, particularly selective serotonin reuptake inhibitors (SSRIs), can help regulate neurochemical imbalances and reduce OCD symptoms.'
                        '\n'
                        '\nExposure and response prevention (ERP): \nThis type of therapy involves gradually exposing individuals to their feared situations or obsessions while preventing them from engaging in their compulsive behaviors. ERP helps individuals learn to tolerate anxiety and break the cycle of obsessions and compulsions.'
                        '\n'
                        '\nCognitive-behavioral therapy (CBT): \nCBT focuses on challenging and changing negative thoughts and behaviors associated with OCD. Therapists help individuals identify and reframe negative thoughts, develop coping strategies, and gradually reduce avoidance behaviors.'
                        '\n'
                        '\nSupport groups: \nConnecting with others who have OCD can provide support, understanding, and practical coping strategies.'
                        '\n'
                        '\nDeep brain stimulation (DBS): \nIn severe cases of OCD that do not respond to medication or therapy, DBS may be considered. This involves surgically implanting electrodes in specific areas of the brain to stimulate certain brain regions.'
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
