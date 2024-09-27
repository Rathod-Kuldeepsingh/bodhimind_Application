import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Hex extends StatelessWidget {
  const Hex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hex',
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
                      'Hex: Anxiety Relief Relax Game is a calming puzzle game designed to help users manage anxiety and stress. The game features simple mechanics where players connect hexagonal tiles to create patterns and shapes. Its minimalist design and soothing sounds create a relaxing atmosphere, encouraging mindfulness and focus.'
                      '\nAs players progress through levels, they can experience a sense of achievement while engaging in a low-pressure environment. Hex is ideal for those looking to unwind, providing a therapeutic escape that combines relaxation with cognitive engagement. It’s perfect for anyone seeking a peaceful gaming experience to alleviate anxiety.',
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
                        'https://play.google.com/store/apps/details?id=com.infinitygames.loophex&pcampaignid=web_share');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text.rich(TextSpan(
                      text: "Hex: Anxiety Relief Relax Game",
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
                    'asset/hex.jpeg',
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
