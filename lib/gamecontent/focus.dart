import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Focusgame extends StatelessWidget {
  const Focusgame ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Focus',
          style: GoogleFonts.openSans(
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    "Description :",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
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
                      'Focus - Train Your Brain is a brain training app designed to improve cognitive skills through a variety of engaging exercises and games. The app targets areas such as memory, attention, and problem-solving, offering personalized training programs that adapt to your performance.'
                      '\nWith a user-friendly interface and a range of fun activities, Focus encourages users to enhance their mental agility while tracking their progress over time. The app aims to make cognitive training enjoyable and effective, suitable for individuals of all ages looking to boost their brainpower and maintain mental sharpness.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        height: 1.6,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    "Download URL:",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    launchUrlString(
                        'https://play.google.com/store/apps/details?id=com.tellmewow.focus&pcampaignid=web_share');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(TextSpan(
                      text: "Focus - Train your Brain",
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 270,bottom: 40),
              child: Column(
                children: [
                  Image.asset(
                    'asset/focus.png',
                    width: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
