// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';

class OnTapSearchScreen extends StatelessWidget {
  const OnTapSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: ColorConstant.white,
        title: TextFormField(
          
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Apps & Games",
            hintStyle: GoogleFonts.roboto(
              color: Colors.grey.shade800,
              fontSize: 13
            )
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.mic_none)),
          SizedBox(width: 10,)
        ],
      ),
      body: Column(
        children: [
          Divider()
      ],),
    );
  }
}