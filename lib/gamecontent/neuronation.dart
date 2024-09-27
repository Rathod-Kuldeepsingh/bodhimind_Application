import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Neuronation extends StatelessWidget {
  const Neuronation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'NeuroNation',
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
                      'NeuroNation is a brain training app designed to help users improve cognitive skills through various games and exercises. It focuses on areas like memory, attention, and problem-solving. The platform uses personalized training plans based on individual performance, making it suitable for different skill levels. Many users appreciate the engaging and interactive format, which can help keep motivation high while enhancing mental agility.',
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
                  launchUrlString('https://play.google.com/store/apps/details?id=air.nn.mobile.app.main&pcampaignid=web_share');
                 }, child: 
                 const Padding(
                   padding:  EdgeInsets.only(left: 20.0),
                   child:  Text.rich(
                        
                            TextSpan(
                              text: "NeuroNation - Brain Training"
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
              padding: const EdgeInsets.only(top: 20,right: 290),
              child: Column(
               children: [
              Image.asset('asset/neuro.png', width: 100,),
               ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
