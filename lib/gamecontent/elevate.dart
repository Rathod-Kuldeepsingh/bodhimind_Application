import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Elevate extends StatelessWidget {
  const Elevate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Elevate',
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
                      'Elevate is a brain training app that features a wide range of games and exercises designed to enhance cognitive skills such as reading, writing, math, and critical thinking. The app offers personalized training programs that adapt to your performance, ensuring that you are constantly challenged at the right level. With daily workouts and progress tracking, Elevate aims to improve your mental agility and boost overall brain function. Its engaging and interactive format makes learning enjoyable, making it suitable for users of all ages.',
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
                 GestureDetector(onTap: (){
                  launchUrlString('https://play.google.com/store/apps/details?id=com.wonder&pcampaignid=web_share');
                 }, child: 
                 const Padding(
                   padding:  EdgeInsets.only(left: 20.0),
                   child:  Text.rich(
                        
                            TextSpan(
                              text: "Elevate - Brain Training Games"
                             ,
                              style: TextStyle(color: Colors.blue,
                              fontSize: 17),
                            )
                          
                        ),
                 ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 250,bottom: 40),
              child: Column(
               children: [
              Image.asset('asset/elevate.jpeg', width: 100,),
               ],
              ),
            )
          ],
        ),
      ),
    );
  }
}