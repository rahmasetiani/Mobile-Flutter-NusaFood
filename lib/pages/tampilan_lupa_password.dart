import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/log_in.dart';

class UpdatePasswordScreen extends StatefulWidget {
  @override
  _UpdatePasswordScreenState createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  final emailEdc = TextEditingController();
  final newPassEdc = TextEditingController();
  final confirmPassEdc = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _updatePassword() async {
    if (newPassEdc.text != confirmPassEdc.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      await _auth.sendPasswordResetEmail(email: emailEdc.text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password reset email sent. Please check your email.'),
          backgroundColor: Colors.green,
        ),
      );

      // Redirect to login screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to send password reset email: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    emailEdc.dispose();
    newPassEdc.dispose();
    confirmPassEdc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF0F4F8), // Background color
          ),
          child: Column(
            children: [
              // Header Section
              Container(
                height: 105,
                decoration: BoxDecoration(
                  color: Color(0xFFFFD700), // Yellow color
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NusaFood',
                            style: GoogleFonts.mavenPro(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'aromatik',
                            style: GoogleFonts.mavenPro(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Penambahan SizedBox untuk spasi
              Container(
                width: 320,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      child: Text(
                        'Reset',
                        style: GoogleFonts.mavenPro(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                    TextField(
                      controller: emailEdc,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: newPassEdc,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'New password',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: confirmPassEdc,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm new password',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: _updatePassword,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFF9A825),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('Reset Password'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
