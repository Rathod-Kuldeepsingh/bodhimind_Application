// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Sample Data for Artifacts
class Artifact {
  final String name;
  final String description;
  final String imageUrl;
  final String article;

  Artifact({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.article,
  });
}

// Sample Artifact Data
final List<Artifact> artifacts = [
  Artifact(
    name: 'Ancient Pottery',
    description: 'A beautiful piece of ancient pottery.',
    imageUrl: 'https://plus.unsplash.com/premium_photo-1673448391005-d65e815bd026?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG98ZW58MHx8MHx8fDA%3D',
    article: 'This pottery dates back to the ancient civilizations that inhabited the region.',
  ),
  Artifact(
    name: 'Historical Manuscript',
    description: 'A manuscript dating back to the 15th century.',
    imageUrl: 'https://media.istockphoto.com/id/813136942/photo/selective-focus-of-stacking-magazine-place-on-table-in-living-room.jpg?s=612x612&w=0&k=20&c=6nRlgDo9ecsb1vCPlN8G4cmq4vf8lW4YkSMhoU-jSqE=',
    article: 'This manuscript provides insights into the culture and language of the time.',
  ),
  Artifact(
    name: 'Stone Tools',
    description: 'Tools made by early humans from stones.',
    imageUrl: 'https://t3.ftcdn.net/jpg/00/76/31/18/360_F_76311829_sT3gJDd0aBdx497WkO72gs9vjCl22N8l.jpg',
    article: 'These tools showcase the ingenuity of early human beings in crafting useful items.',
  ),
  Artifact(
    name: 'Bronze Statue',
    description: 'A statue crafted from bronze.',
    imageUrl: 'https://fatstacksblog.com/wp-content/uploads/2019/11/Person-writing-article-nov26.jpg',
    article: 'This statue represents the artistic skills of craftsmen in the ancient world.',
  ),
];

class ArtifactListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('Resources(Articals)',
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          )
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: artifacts.length,
          itemBuilder: (context, index) {
            final artifact = artifacts[index];
            return Card(
              color: Colors.white,
              elevation: 6,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArtifactDetailScreen(artifact: artifact),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Column(
                    children: [
                      Image.network(artifact.imageUrl),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              artifact.name,
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              artifact.description,
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Artifact Detail Screen
class ArtifactDetailScreen extends StatelessWidget {
  final Artifact artifact;

  ArtifactDetailScreen({required this.artifact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(artifact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(artifact.imageUrl),
            const SizedBox(height: 20),
            Text(
              artifact.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              artifact.article,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

