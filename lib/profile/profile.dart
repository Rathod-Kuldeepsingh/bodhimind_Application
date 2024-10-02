// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';
import 'dart:io';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
      ),
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String fullName = '';
  String mobile = '';
  String email = '';
  String status = '';
  String address = '';
  String profileImageUrl = 'https://example.com/default_image.png'; // Default image URL
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String uid = user.uid;

        DocumentSnapshot userData =
            await FirebaseFirestore.instance.collection('users').doc(uid).get();

        if (userData.exists) {
          setState(() {
            fullName = userData.get('fullName') ?? user.displayName ?? '';
            mobile = userData.get('mobile') ?? '';
            email = userData.get('email') ?? user.email ?? '';
            status = userData.get('status') ?? 'No Status Provided';
            address = userData.get('address') ?? 'No Address Provided';
            profileImageUrl = userData.get('profileImage') ?? profileImageUrl;
            isLoading = false;
          });
        } else {
          await createUserDocument(user);
          fetchUserData();
        }
      }
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  Future<void> createUserDocument(User user) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'fullName': '',
        'mobile': '',
        'email': user.email,
        'status': 'No Status Provided',
        'address': 'No Address Provided',
        'profileImage': profileImageUrl,
      });
    } catch (e) {
      print('Error creating user document: $e');
    }
  }

  Future<void> saveUserData(String newFullName, String newMobile,
      String newEmail, String newStatus, String newAddress) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        String uid = user.uid;
        await FirebaseFirestore.instance.collection('users').doc(uid).update({
          'fullName': newFullName,
          'mobile': newMobile,
          'email': newEmail,
          'status': newStatus,
          'address': newAddress,
        });
        setState(() {
          fullName = newFullName;
          mobile = newMobile;
          email = newEmail;
          status = newStatus;
          address = newAddress;
        });
      }
    } catch (e) {
      print('Error saving user data: $e');
    }
  }

  Future<void> pickAndUploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      String fileName = 'profile_images/${FirebaseAuth.instance.currentUser!.uid}.jpg';
      try {
        // Upload to Firebase Storage
        await FirebaseStorage.instance.ref(fileName).putFile(imageFile);

        // Get the download URL
        String downloadURL = await FirebaseStorage.instance.ref(fileName).getDownloadURL();

        // Save the download URL to Firestore
        await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).update({
          'profileImage': downloadURL,
        });

        setState(() {
          profileImageUrl = downloadURL;
        });
      } catch (e) {
        print('Error uploading image: $e');
      }
    } else {
      print('No image selected');
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()));
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: pickAndUploadImage,
          ),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfileScreen(
                    currentFullName: fullName,
                    currentMobile: mobile,
                    currentEmail: email,
                    currentStatus: status,
                    currentAddress: address,
                    onSave: (newFullName, newMobile, newEmail, newStatus,
                        newAddress) {
                      saveUserData(newFullName, newMobile, newEmail, newStatus,
                          newAddress);
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenWidth * 0.1),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(profileImageUrl),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    fullName.isNotEmpty ? fullName : 'No Name Provided',
                    style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    status.isNotEmpty ? status : 'No Status Provided',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 30.0),
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: Text(email.isNotEmpty ? email : 'No Email Provided'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title:
                        Text(mobile.isNotEmpty ? mobile : 'No Mobile Provided'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: Text(
                        address.isNotEmpty ? address : 'No Address Provided'),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: ElevatedButton(
                      onPressed: signOut,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[300],
                        padding: EdgeInsets.symmetric(vertical: screenWidth * 0.03, horizontal: screenWidth * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  final String currentFullName;
  final String currentMobile;
  final String currentEmail;
  final String currentStatus;
  final String currentAddress;
  final Function(String, String, String, String, String) onSave;

  EditProfileScreen({
    required this.currentFullName,
    required this.currentMobile,
    required this.currentEmail,
    required this.currentStatus,
    required this.currentAddress,
    required this.onSave,
  });

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController fullNameController;
  late TextEditingController mobileController;
  late TextEditingController emailController;
  late TextEditingController statusController;
  late TextEditingController addressController;

  @override
  void initState() {
    super.initState();
    fullNameController = TextEditingController(text: widget.currentFullName);
    mobileController = TextEditingController(text: widget.currentMobile);
    emailController = TextEditingController(text: widget.currentEmail);
    statusController = TextEditingController(text: widget.currentStatus);
    addressController = TextEditingController(text: widget.currentAddress);
  }

  @override
  void dispose() {
    fullNameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    statusController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Edit Profile',
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenWidth * 0.1),
        child: Column(
          children: [
            _buildTextField(fullNameController, 'Full Name'),
            const SizedBox(height: 20.0),
            _buildTextField(mobileController, 'Mobile', TextInputType.phone),
            const SizedBox(height: 20.0),
            _buildTextField(emailController, 'Email', TextInputType.emailAddress),
            const SizedBox(height: 20.0),
            _buildTextField(statusController, 'Status'),
            const SizedBox(height: 20.0),
            _buildTextField(addressController, 'Address'),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                widget.onSave(
                  fullNameController.text,
                  mobileController.text,
                  emailController.text,
                  statusController.text,
                  addressController.text,
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                padding: EdgeInsets.symmetric(vertical: screenWidth * 0.03, horizontal: screenWidth * 0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                elevation: 5,
              ),
              child: Text(
                "Save",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, [TextInputType inputType = TextInputType.text]) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}


