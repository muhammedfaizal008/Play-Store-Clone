import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';

class IndividualScreenForCategories extends StatelessWidget {
  String title;
   IndividualScreenForCategories({
    required this.title,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        title: Text(title,style: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w400
        ),),
      ),
      body: Column(

      ),
    );
  }
}