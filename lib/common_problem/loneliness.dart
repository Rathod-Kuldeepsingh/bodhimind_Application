import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loneliness extends StatelessWidget {
  const Loneliness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Loneliness',
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
                        'Loneliness is a feeling of being disconnected from others, even when surrounded by people. It can be a temporary state, or it can become chronic, leading to mental and physical health problems.',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6,
                        )),
                        textAlign: TextAlign.justify,
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
                        'Social Isolation:\n'
                        'Physical isolation, living alone, or lacking close social ties can lead to loneliness.'
                        '\n'
                        '\nLife Transitions:\n'
                        'Major life changes like moving to a new place, losing a loved one, or retiring can leave individuals feeling lonely.'
                        '\n'
                        '\nMental Health Issues:\n'
                        'Conditions like depression and social anxiety can contribute to loneliness by making social interactions more difficult.'
                        '\n'
                        '\nTechnology:\n'
                        'While social media provides a sense of connection, it can also contribute to feelings of loneliness if it replaces meaningful in-person interactions.',
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
                        'Heart Health:\n'
                       'Loneliness is linked to a higher risk of heart disease and stroke due to elevated blood pressure and stress hormones.'
                        ' \n'
                        '\nImmune Function:\n'
                        'Loneliness weakens the immune system, making individuals more susceptible to infections.'
                        ' \n'
                        '\nCognitive Decline:\n'
                        'Loneliness has been associated with an increased risk of cognitive decline and dementia in older adults.'
                        '\n'
                        '\nSleep Problems:\n'
                        'Individuals who feel lonely may experience poor-quality sleep, which can worsen mental and physical health over time.'
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
                        'Social Connection:\n'
                        'Reaching out to friends, family, or joining social groups can help foster meaningful connections.'
                        '\n'
                        '\nVolunteering:\n'
                      'Helping others can combat feelings of loneliness and create a sense of community.'
                        '\n'
                        '\nTherapy:\n'
                       'Cognitive-behavioral therapy (CBT) can help individuals work through negative thoughts that contribute to loneliness and develop better social skills.'
                        '\n'
                        '\nLimit Technology Use:\n'
                       'Reducing time spent on social media and focusing on in-person interactions can help alleviate loneliness.'
                        '\n'
                        '\nAdopting a Pet:\n'
                       'Pets can provide companionship and reduce feelings of isolation.'
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
