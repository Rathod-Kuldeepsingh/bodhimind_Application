import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Braintest extends StatelessWidget {
  const Braintest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Brain Test',
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
                      'Brain Test: Tricky Puzzles is a fun and engaging puzzle game designed to challenge your thinking and problem-solving skills. The game features a variety of tricky and brain-teasing levels that require players to think outside the box. Each level presents unique puzzles that often involve unexpected solutions, encouraging creativity and lateral thinking.'
                      '\nWith its simple yet colorful graphics and humorous scenarios, the game appeals to players of all ages. As you progress through the levels, the challenges become increasingly complex, keeping you entertained and mentally stimulated. Brain Test is perfect for those looking to have fun while sharpening their cognitive abilities!',
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
                        'https://play.google.com/store/apps/details?id=com.unicostudio.braintest&pcampaignid=web_share');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(TextSpan(
                      text: "Brain Test: Tricky Puzzles",
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 290),
              child: Column(
                children: [
                  Image.asset(
                    'asset/test.avif',
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
