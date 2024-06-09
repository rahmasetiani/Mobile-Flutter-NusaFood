loginimport 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/sign_up.dart'; // Import SignUp page
import 'package:flutter_app/pages/menu.dart'; // Import Menu page
import 'package:flutter_app/pages/tampilan_lupa_password.dart'; // Import TampilanLupaPassword page

class LogIn extends StatelessWidget {
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
              // Login Form Section
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Tab Bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to SignUp page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.mavenPro(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Log in',
                            style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Email Field
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'enter email or username',
                          hintStyle: GoogleFonts.mavenPro(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      // Password Field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          hintStyle: GoogleFonts.mavenPro(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      // Forgot Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to TampilanLupaPassword page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TampilanLupaPassword()),
                            );
                          },
                          child: Text(
                            'Forget Password ? ',
                            style: GoogleFonts.mavenPro(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Log In Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF9A825), // Yellow color
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          // Navigate to Menu page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        child: Text(
                          'Log In',
                          style: GoogleFonts.mavenPro(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LogIn(),
  ));
}
