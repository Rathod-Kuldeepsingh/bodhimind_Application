import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Infinityloop extends StatelessWidget {
  const Infinityloop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Infinity Loop',
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
                      'Infinity Loop is a relaxing puzzle game that invites players to connect lines and create intricate loop patterns. The gameplay focuses on simplicity and tranquility, allowing users to unwind while engaging their minds.'
                      '\nPlayers drag and rotate pieces to form continuous loops, solving each level through visual and spatial reasoning. The game features minimalistic design and soothing sounds, making it a perfect choice for a calming experience. With hundreds of levels that gradually increase in complexity, Infinity Loop offers a satisfying challenge for puzzle enthusiasts looking to relax and de-stress.',
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
                        'https://play.google.com/store/apps/details?id=com.balysv.loop&pcampaignid=web_share');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(TextSpan(
                      text: "Infinity Loop: Relaxing Puzzle",
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
                    'asset/loop.webp',
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
