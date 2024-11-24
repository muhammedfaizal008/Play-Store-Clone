// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/utils/image_constants.dart';
import 'package:play_store/view/bottom_navbar_screen/bottom_navbar_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                ImageConstants.SIGNINSCREENLOGO,
                height: 75,
                width: 75,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Google Play",
                  textAlign: TextAlign.center, 
                  style: TextStyle( 
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Sign in to find the latest Android apps, games, movies & more",
                  textAlign: TextAlign.center, 
                  style: TextStyle( 
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:WidgetStatePropertyAll(Colors.green),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavbarScreen(),));
              }, child: Text("Sign in"))
          ],
        ),
      ),
    );
  }
}
