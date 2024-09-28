// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last, unused_import

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SupportItem {
  final String title;
  final String description;
  final String imageUrl;
  final String work;
  final String qualification;
  final String specialityintreset;
  final String link;

  SupportItem(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.work,
      required this.qualification,
      required this.specialityintreset,
      required this.link});
}

class ProfSupport extends StatefulWidget {
  const ProfSupport({super.key});

  @override
  State<ProfSupport> createState() => _ProfSupportState();
}

class _ProfSupportState extends State<ProfSupport> {
  final List<SupportItem> supportItems = [
    SupportItem(
        title: "Dr. Anandi Lal",
        description: "Director & Head of the Department\nMental Health And Behavioural Sciences, Clinical Psychology",
        imageUrl: "asset/anandi.jpg",
        work:
            "About: Dr. Anandi Lal \nDirector & Head of the Department Mental Health And Behavioural Sciences,Clinical Psychology \nExperience: 45+ Years \nDr. Anandi Lal is currently working at Max Healthcare\nNearly 45 years of experience in the specialization",
        qualification: 'Qualification: MD (Psychiatry)\nMBBS',
        specialityintreset:
            'Speciality Intreset: General Adult Psychiatry\nChild & Adolescent Psychiatry',
        link: 'https://www.maxhealthcare.in/doctor/dr-anandi-lal'),
    SupportItem(
        title: "Dr. Nisha Khanna",
        description:
            "PhD in Psychology\n Post Graduate Diploma in Yoga and Mediation",
        imageUrl: "asset/nisha.jpg",
        work:
            "About: Dr. Nisha Khanna has 20 years of worldwide experience in the field of Mental Health. She has counseled more than 30k+ people over one to one basis for hours and hours across the Globe. She is a renowned leading Psychologist and more popular in Delhi, NCR and India as a Marriage and Family Counselor. She is a Celebrity Psychologist, Twice TEDx Speaker, Trained Marriage and Family Therapist, Certified Couple Facilitator, Certified EQ Assessor, Certified Brain Profiler. She is certified in EQ Testing and Compatibility Testing. She is Blogger, Columnist, TV and Radio Panelist from last 14 years. ",
        qualification:
            'Qualification: PhD in Psychology\n Post Graduate Diploma in Yoga and Mediation',
        specialityintreset:
            'Speciality Intreset: Relationship Counselling\nTeenage Counseling\nPre Marriage and Post Marriage Counseling\nFamily Counseling',
        link: 'https://www.maxhealthcare.in/doctor/dr-nisha-khanna'),
    SupportItem(
        title: "Dr. Madhusudan Singh Solanki",
        description:
            "Mental Health And Behavioural Sciences\nPsychiatry\nClinical Psychology",
        imageUrl: "asset/madhushan.jpg",
        work:
            "About: A Gold medalist in Psychiatry, Dr. Madhusudan Singh Solanki has worked with various tertiary care centres like the Safdarjung Hospital in New Delhi and the BJ Medical College & Civil Hospital in Ahmedabad.He has been the author and validator for Mental Health content on National Health Portal - A Ministry of Health, Government of India initiative and he has authored Mental Health Training Courses for primary health care doctors to implement National Mental Health Programs in the country successfully.",
        qualification: 'Qualification: No information',
        specialityintreset:
            'Speciality Intreset: General Adult Psychiatry \nPsychopharmacotherapy\nIntegrative Psychiatry\nDe-addiction\nGeriatric Mental Health\nconsultation-liaison Psychiatry',
        link:
            'https://www.maxhealthcare.in/doctor/dr-madhusudan-singh-solanki'),
    SupportItem(
        title: "Dr. (Prof.) Prabal Frank Nandwani",
        description: 'Visiting Consultant\n'
            'Clinical Psychology, Psychiatry, Mental Health And Behavioural Sciences',
        imageUrl: "asset/prabal.jpg",
        work:
            "About: Prabal is a passionate psychologist working in a mission mode to help people get out of their emotional, mental and physical problems. Dr. Frank is a sought-after energy psychology practitioner who has eased the distress of hundreds of people suffering from many issues including: anxiety disorders, behavioural and emotional disorders, bipolar affective disorder, depression, dissociation and dissociative disorders, eating disorders, obsessive compulsive disorder, paranoia, marital issues, sleep disorders, low performance, post-traumatic stress disorder, psychosis, and schizophrenia.",
        qualification: 'Qualification: Ph.D\n'
            'Masters in Applied Psychology (Specialization in Clinical Psychology)',
        specialityintreset: 'Speciality Intreset: No Information',
        link: 'https://www.maxhealthcare.in/doctor/prabal-frank-nandwani'),
    SupportItem(
        title: "Ms. Rashi Sahai",
        description: 'Clinical Psychologist\n'
            'Mental Health And Behavioural Sciences\nClinical Psychology',
        imageUrl: "asset/rashi.jpg",
        work:
            "Ms. Rashi Sahai is currently working at Max Healthcare\nPerfect Mind Clinic, New Delhi\nNational Institute of Mental Health and Neurosciences, Bengaluru\nAir Force Central Medical Establishment, New Delhi",
        qualification: 'Qualification: M. Phil in Clinical Psychology \n'
            'MA in Clinical Psychology\nBA (Hons) in Applied Psychology ',
        specialityintreset: 'Speciality Intreset: Understanding of various types of assessments and clinical testing',
        link: 'https://www.maxhealthcare.in/doctor/rashi-sahai'),


    SupportItem(
        title: "Ms. Vishakha Bhalla ",
        description: 'Consultant - Counseling Psychologist\n'
            'Clinical Psychology',
        imageUrl: "asset/vish.jpeg",
        work:
            "Ms. Vishakha Bhalla did her B.Sc. in Clinical Psychology from Amity University, Gurugram. After completing her graduation, she went on to complete her M.Sc. in Clinical Psychology in Manipal University, Jaipur. During this period, she received her intensive training as an apprentice from various prestigious hospitals, clinics and special schools. Showing competence with anxiety/ stress related disorders, sleep disturbances, work-life balance disruption, complaints with depression, grief/PTSD, and many such concerns, she has an experience with early prevention and management in regard to mental health related disturbances. Her capability with counseling and psychotherapy, expresses the underlying approach that conforms to the complete physical, social, occupational and mental well-being.",
        qualification: 'Qualification: Post-graduate diploma in counseling and family therapy  \n'
            'M.Sc. in Clinical Psychology \nB.Sc. in Clinical Psychology',
        specialityintreset: 'No Information',
        link: 'https://www.maxhealthcare.in/doctor/ms-vishakha-bhalla'),

          SupportItem(
        title: "Dr. Ajit Dandekar",
        description: 'Head\n'
            'Mental Health And Behavioural Sciences, Clinical Psychology, Psychiatry',
        imageUrl: "asset/person.jpg",
        work:
            "About: 4 years 3 months – Registrar in Psychiatry – Nair Hospital\n3 years - Lecturer at the Dept. of Psychiatry – TN Med. College and B.Y.L. Nair Hospital\nHonorary Psychiatrist at K. B. Bhabha Municipal General Hospital from 1989 to 2005\nJeevan Vikas Kendra since 1984\nHoly Family Hospital, Bandra – since 1989\nDr. Balabhai Nanavati Hospital – since 2004",
        qualification: 'Qualification: '
            'M.D. D.P.M. (Psychological Medicine, Bombay University)',
        specialityintreset: 'Depression, Stress Management, Psychotherapy, Counseling',
        link: 'https://www.maxhealthcare.in/doctor/dr-ajit-dandekar'),

         SupportItem(
        title: "Dr. Madhuri Singh",
        description: 'Consultant\n'
            'Mental Health And Behavioural Sciences, Clinical Psychology, Psychiatry',
        imageUrl: "asset/madhuri.jpg",
        work:
            "About: Worked as a full time resident doctor during M.D. (Psy.) in the Department of Psychiatry in BYL Nair Charitable Hospital, Mumbai for two and a half years\n Practicing as a Private Consulting Psychiatrist and Marriage Counselor for the last 24 years.\nWorked as a Honorary Consulting Psychiatrist in Parent Child Guidance Centre, Lokmanya Seva Sangh, Vile Parle.",
        qualification: 'Qualification: M.B.B.S   \n'
            'M.D. ( Psy.)',
        specialityintreset: 'Marriage and family counseling',
        link: 'https://www.maxhealthcare.in/doctor/dr-madhuri-singh'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Professional Support",
            style: GoogleFonts.openSans(
                fontSize: 25, fontWeight: FontWeight.w600)),
        toolbarHeight: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
            mainAxisSpacing: 10,
          ),
          itemCount: supportItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to a detail screen or perform an action
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SupportDetailScreen(item: supportItems[index]),
                  ),
                );
              },
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      supportItems[index].imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit
                          .cover, // This will help maintain the aspect ratio
                    ),
                    const SizedBox(height: 40),
                    Text(
                      supportItems[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      supportItems[index].description,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SupportDetailScreen extends StatelessWidget {
  final SupportItem item;

  // ignore: prefer_const_constructors_in_immutables
  SupportDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Professional Support'),
      //   backgroundColor: Colors.blueAccent,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    item.imageUrl,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Get Professional Support',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Connect with licensed professionals for advice, therapy, and counseling.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    launchUrlString(item.link);
                  },
                  child: const Text(
                    'Request Support',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    backgroundColor: Colors.blueAccent,
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              const Text(
                'Doctor Information',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildDoctorDetail(item.title),
              // _buildDoctorDetail(item.work),
              _buildDoctorDetail(item.qualification),
              _buildDoctorDetail(item.specialityintreset),
              const SizedBox(height: 20),
              Text(
                item.work,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorDetail(String detail) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blueAccent, width: 1),
      ),
      child: Text(
        detail,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
