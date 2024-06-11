import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/register/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/log_in.dart'; // Import login page

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();
  final confirmPassEdc = TextEditingController();
  bool passInvisible = true;

  @override
  void dispose() {
    emailEdc.dispose();
    passEdc.dispose();
    confirmPassEdc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      body: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterLoading) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Loading..')));
          }
          if (state is RegisterFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.red,
              ));
          }
          if (state is RegisterSuccess) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          }
        },
        child: SingleChildScrollView(
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
                // Registration Form Section
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
                            Text(
                              'Sign up',
                              style: GoogleFonts.mavenPro(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            SizedBox(width: 20),
                            TextButton(
                              onPressed: () {
                                // Navigate to LogIn page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: Text(
                                'Log in',
                                style: GoogleFonts.mavenPro(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Email Field
                        TextFormField(
                          controller: emailEdc,
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
                        TextFormField(
                          controller: passEdc,
                          obscureText: passInvisible,
                          decoration: InputDecoration(
                            hintText: 'password',
                            hintStyle: GoogleFonts.mavenPro(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(passInvisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  passInvisible = !passInvisible;
                                });
                              },
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        // Confirm Password Field
                        TextFormField(
                          controller: confirmPassEdc,
                          obscureText: passInvisible,
                          decoration: InputDecoration(
                            hintText: 'confirm password',
                            hintStyle: GoogleFonts.mavenPro(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(passInvisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  passInvisible = !passInvisible;
                                });
                              },
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        SizedBox(height: 20),
                        // Sign Up Button
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
                            if (passEdc.text == confirmPassEdc.text) {
                              context.read<RegisterCubit>().register(
                                    email: emailEdc.text,
                                    password: passEdc.text,
                                  );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Passwords do not match'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Sign up',
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
      ),
    );
  }
}
