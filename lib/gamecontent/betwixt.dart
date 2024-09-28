import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Betwixt extends StatelessWidget {
  const Betwixt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Betwixt',
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
                      'Betwixt is a mental health game designed to help players explore and manage their emotions through interactive storytelling and gameplay. It offers a unique blend of narrative-driven experiences and decision-making scenarios that encourage self-reflection and mindfulness. Players navigate various challenges that represent real-life emotional struggles, allowing them to gain insights into their mental health.'
                      '\nThe game focuses on promoting mental well-being by providing tools and strategies for coping with stress and anxiety, fostering resilience, and enhancing emotional awareness. Its engaging format aims to make mental health resources accessible and relatable, appealing to a wide audience looking for supportive and educational experiences.',
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
                        'https://play.google.com/store/apps/details?id=betwixt.web.app&pcampaignid=web_share');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(TextSpan(
                      text: "Betwixt—The Mental Health Game",
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 250,bottom: 40),
              child: Column(
                children: [
                  Image.asset(
                    'asset/betwixt.png',
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
