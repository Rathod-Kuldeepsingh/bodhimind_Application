// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:shubham_test/common_problem/list.dart';
import 'package:shubham_test/dash/bottomnavigation.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class Common_problem extends StatelessWidget {
  final List<String> items = [
    'Depression',
    'Anxiety',
    'Work-life Stress',
    'Loneliness',
    'Sudden Loss',
    'Self-Doubt',
    'Social Fear',
    'Behavioral Issues',
    'Struggle with Relation',
    'Economic/Financial Stress',
    'Sleep Disorders',
    'phobia',
    'Bipolar Disorder',
    'Obsessive-Compulsive Disorder'
  ];

  final List<Color> color = [
    const Color.fromARGB(255, 238, 243, 245),
    const Color.fromARGB(255, 137, 209, 118),
    const Color.fromARGB(255, 139, 169, 244),
    const Color.fromARGB(255, 125, 213, 247),
    const Color.fromARGB(255, 247, 245, 90),
    const Color.fromARGB(255, 128, 195, 237),
    const Color.fromARGB(255, 92, 244, 247),
    const Color.fromARGB(255, 2, 245, 188),
    const Color.fromARGB(255, 171, 58, 227),
    const Color.fromARGB(255, 151, 255, 189),
    const Color.fromARGB(255, 201, 244, 72),
    const Color.fromARGB(255, 160, 160, 158),
    const Color.fromARGB(255, 253, 56, 56),
    const Color.fromARGB(255, 255, 247, 244),
  ];

  final List<Image> images = [
    Image.asset("asset/depression.png", width: 40),
    Image.asset("asset/anxiety.png", width: 40),
    Image.asset("asset/burnout.png", width: 40),
    Image.asset("asset/loneliness.png", width: 40),
    Image.asset("asset/strain.png", width: 40),
    Image.asset("asset/self-knowledge.png", width: 40),
    Image.asset("asset/fear.png", width: 40),
    Image.asset("asset/consumer-behavior.png", width: 40),
    Image.asset("asset/hard-work.png", width: 40),
    Image.asset("asset/person.png", width: 40),
    Image.asset("asset/insomnia.png", width: 40),
    Image.asset("asset/fear (1).png", width: 40),
    Image.asset("asset/bipolar.png", width: 40),
    Image.asset("asset/obsessive-compulsive-disorder.png", width: 40),
  ];

  // ignore: non_constant_identifier_names
  final List_common_problem = [
    // list view
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
    const Kuldeep(),
  ];

  final List<String> subtitle = [
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    'Subtitle for item :',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text('Common Problems',
            style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700))),
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/bottomnavigation'),
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          List_common_problem[index])), // ontap function
              child: Card(
                margin: const EdgeInsets.all(8.0),
                color: color[index],
                child: ListTile(
                  leading: images[index],
                  title: Text(
                    items[index],
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                  subtitle: Text(subtitle[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
