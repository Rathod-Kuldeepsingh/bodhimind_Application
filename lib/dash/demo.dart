import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Name is required';
    } else if (name.length < 3) {
      return 'Name must be at least 3 characters long';
    }
    return null;
  }

  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$').hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validateMobile(String? mobile) {
    if (mobile == null || mobile.isEmpty) {
      return 'Mobile number is required';
    } else if (mobile.length != 10) {
      return 'Mobile number must be 10 digits long';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      return 'Password must contain at least one digit';
    } else if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process the sign-up (e.g., send data to the server)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: validateName,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: validateEmail,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _mobileController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                  validator: validateMobile,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  validator: validatePassword,
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}