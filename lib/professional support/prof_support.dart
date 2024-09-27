// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SupportItem {
  final String title;
  final String description;
  final String imageUrl;
  final String email;
  final String phone;
  final String qualification;

  SupportItem({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.email,
    required this.phone,
    required this.qualification

  });
}
class ProfSupport extends StatefulWidget {
  const ProfSupport({super.key});

  @override
  State<ProfSupport> createState() => _ProfSupportState();
}

class _ProfSupportState extends State<ProfSupport> {
  final List<SupportItem> supportItems = [
    SupportItem(title: "Dr.Anil Jain", description: "MD Physician", imageUrl: "https://static.vecteezy.com/system/resources/previews/024/585/403/non_2x/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png",email: "aniljain123@.gmail.com",phone: '8838567928',qualification: 'MD Physician'),
    SupportItem(title: "Dr.Vimal Darji", description: "MD Physician", imageUrl: "https://static.vecteezy.com/system/resources/previews/024/585/355/non_2x/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png",email: "vimaldarji123@.gmail.com",phone: '8838567928',qualification: 'MD Physician'),
    SupportItem(title: "Dr.Kuldeep Rathod", description: "MBBS", imageUrl: "https://static.vecteezy.com/system/resources/previews/046/380/857/non_2x/3d-cute-cartoon-female-doctor-png.png",email: "kuldeeprathod123@.gmail.com",phone: '9724697876',qualification: 'MBBS'),
     SupportItem(title: "Dr.Hitesh Kumar", description: "BAMS", imageUrl: "https://static.vecteezy.com/system/resources/previews/049/690/886/non_2x/aigenerated-doctor-cartoon-character-with-a-stethoscope-png.png",email: "hiteshkumar123@.gmail.com",phone: '1234567890',qualification: 'BAMS'),
    SupportItem(title: "Dr.Wasim Rana", description: "BHMS", imageUrl: "https://static.vecteezy.com/system/resources/previews/027/183/095/non_2x/cartoon-3d-doctor-rendering-free-png.png",email: "wasimrana123@.gmail.com",phone: '0987654321',qualification: 'BHMS'),
    SupportItem(title: "Dr.Shaswat Darji", description: "MS", imageUrl: "https://static.vecteezy.com/system/resources/previews/024/585/344/large_2x/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png",email: "shaswatdarji123@.gmail.com",phone: '7894657829',qualification: 'MS'),
    // Add more items as needed
  ];
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Professional Support",
        style: GoogleFonts.openSans(
          fontSize: 25,
          fontWeight: FontWeight.w600

        )),
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
                    builder: (context) => SupportDetailScreen(item: supportItems[index]),
                  ),
                );
              },
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      supportItems[index].imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover, // This will help maintain the aspect ratio
                    ),
                    const SizedBox(height: 10),
                    Text(
                      supportItems[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                   const  SizedBox(height: 5),
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
    return  Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: const Text('Professional Support'),
        //   backgroundColor: Colors.blueAccent,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Image.network(
                      item.imageUrl,height: 150, width: 150,
                      
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Request Support Button Pressed'),
                        ),
                      );
                    },
                    child: const Text('Request Support',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                     fontWeight: FontWeight.w500,
                    ),),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), backgroundColor: Colors.blueAccent,
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
                _buildDoctorDetail(item.email),
                _buildDoctorDetail(item.phone),
                _buildDoctorDetail(item.qualification),
                const SizedBox(height: 20),
                const Text(
                  'About Dr. John Doe: A compassionate psychiatrist with over 10 years of experience in helping individuals cope with mental health challenges. Dedicated to providing personalized care and support.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
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

