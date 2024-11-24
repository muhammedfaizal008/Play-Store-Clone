// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/games_screen/tabs/individual_screen_for_categories/individual_screen_for_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualScreenForCategories(title: Dummydb.gamesCategories[index]["name"]),));
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Dummydb.gamesCategories[index][IconData],size: 19,),
                      SizedBox(width: 20,),
                      Text(Dummydb.gamesCategories[index]["name"],style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.GREYCOLOR
                      )
                      )
                    ],
                  ),
                ),
              ),
            )
            )
          ),
        ),
    );
  }
}