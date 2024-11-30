// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/view/sign_in_screen.dart/password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              height: 100,
              width: 200,
              "assets/images/GoogleLogo.png"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Sign in",style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text("Use your Google Account.The account will be added to this device and available to other Google apps",style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Text("Learn more about using your account",style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.blueAccent.shade700
            ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Email or phone",
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 12
                  ),
                  label: Text("Email or phone"),
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 14
                  ),
                  border: OutlineInputBorder(),
                  floatingLabelStyle: TextStyle(
                    color: Colors.blueAccent.shade700,
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent.shade700))
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Forgot email?",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent.shade700
              ),),
              )),
              Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Create account",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent.shade700
              ),),
              )),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordScreen(),));
                    },
                    child: Text("Next"),
                  )
                
                ),
              )
          ],
        ),
      ),
    );
  }
}