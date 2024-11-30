// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/view/bottom_navbar_screen/bottom_navbar_screen.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Image.asset(
                height: 100,
                width: 200,
                "assets/images/GoogleLogo.png"
              ),
              Text("Enter your password", style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              )),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Use your Google Account to sign in. Enter your password.",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    hintText: "Password",
                    hintStyle: GoogleFonts.roboto(fontSize: 12),
                    label: Text("Password"),
                    labelStyle: GoogleFonts.roboto(fontSize: 14),
                    border: OutlineInputBorder(),
                    floatingLabelStyle: TextStyle(color: Colors.blueAccent.shade700),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent.shade700)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      backgroundColor: WidgetStateProperty.all(Colors.blueAccent.shade700),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                      textStyle: WidgetStateProperty.all(
                        TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => BottomNavbarScreen(),), (route) => false,);
                    },
                    child: Text("Sign in"),
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
