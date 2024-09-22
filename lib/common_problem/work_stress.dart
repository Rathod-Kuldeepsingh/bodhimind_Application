import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkStress extends StatelessWidget {
  const WorkStress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          title: Text('Work-life-stress',
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
                        'Work-life stress arises when job responsibilities interfere with personal life. It is typically caused by an imbalance in workload, poor time management, or high expectations, leading to physical and mental exhaustion (burnout).',
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
                      'Work Overload:\n'
                      'When demands at work exceed your ability to cope, work-life stress occurs. Unrealistic expectations, tight deadlines, and long hours can all contribute.'
                      ' \n'
                      '\nLack of Control:\n'
                      'Feeling that you have no say in job-related decisions or being micromanaged increases stress levels.'
                      ' \n'
                      '\nWorkplace Environment:\n'
                     'A toxic or unsupportive work culture, poor communication, and conflicts with coworkers can worsen work-life stress.'
                      '\n'
                      '\nPersonal Responsibilities:\n'
                      'Stress can increase when there is a lack of time or energy for personal life, family commitments, and leisure.',
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
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '\nCardiovascular Problems:\n'
                        'Chronic stress raises blood pressure and cholesterol levels, increasing the risk of heart attack and stroke.'
                        ' \n'
                        '\nSleep Disorders:\n'
                        'Stress can lead to insomnia or poor-quality sleep, further exacerbating fatigue and stress.'
                        ' \n'
                        '\nGastrointestinal Issues:\n'
                       'Stress disrupts digestion, causing symptoms such as stomach cramps, constipation, or diarrhea.'
                        '\n'
                        '\nMental Health Decline:\n'
                        'Work-related stress can lead to anxiety, depression, and burnout, reducing overall well-being and productivity.'
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
                padding: const EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '\nTime Management:\n'
                       'Prioritize and delegate tasks to reduce the workload. Use tools like calendars and apps to organize tasks more efficiently. '
                        '\n'
                        '\nEstablishing Boundaries:\n'
                       'Setting boundaries between work and personal life (e.g., not checking emails after hours) can reduce stress.'
                        '\n'
                        '\nSelf-Care:\n'
                       'Exercise, meditation, hobbies, and spending time with loved ones help counterbalance work pressures.'
                        '\n'
                        '\nCommunication:\n'
                        'Clear communication with supervisors and colleagues about workload and expectations is critical to managing stress.'
                        '\n'
                        '\nSeeking Professional Help:\n'
                       'A therapist or career coach can provide tools to handle workplace stress and improve work-life balance.'
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
