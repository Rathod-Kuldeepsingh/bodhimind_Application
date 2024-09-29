// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shubham_test/auth/authen.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/user_authentication/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primaryColor: Colors.green, // WhatsApp color
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
            isLoading = false;
          });
        } else {
          await createUserDocument(user);
          fetchUserData(); // Fetch data again after creating document
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

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()));
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  final _auth = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Profile',
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          )
        ),),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_square),
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
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: Column(
                children: [
                 const CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIf4R5qPKHPNMyAqV-FjS_OTBB8pfUV29Phg&s'),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    fullName.isNotEmpty ? fullName : 'No Name Provided',
                    style: const TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    status.isNotEmpty ? status : 'No Status Provided',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
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
                 const  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the button vertically
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            await _auth.signOut();
                            goToLogin(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[
                                300], // Change the button background color
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 30.0), // Padding for the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Rounded corners
                            ),
                            elevation: 5, // Shadow effect
                          ),
                          child: const Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Text color
                            ), // Text styling
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
  goTohome(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homescreen()),
      );
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        title: Text('Edit Profile',
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )
        )),
      backgroundColor: Colors.white,
      toolbarHeight: 70, // Match the theme color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
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
            const SizedBox(height: 40,),
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
                backgroundColor: Colors.blue[300], // Button color
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                ),
                elevation: 5, // Shadow effect
              ),
              child: const Text(
                "Save",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
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
          borderRadius: BorderRadius.circular(30.0), // Rounded corners for text fields
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
        ),
        filled: true,
        fillColor: Colors.white, // Light background color for text fields
      ),
    );
  }
}