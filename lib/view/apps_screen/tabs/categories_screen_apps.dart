// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/games_screen/tabs/individual_screen_for_categories/individual_screen_for_categories.dart';

class CategoriesScreenApps extends StatelessWidget {
  const CategoriesScreenApps({super.key});

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualScreenForCategories(title: Dummydb.appsCategories[index]["name"]),));
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Dummydb.appsCategories[index]["icon"],size: 19,),
                      SizedBox(width: 20,),
                      Text(Dummydb.appsCategories[index]["name"],style: GoogleFonts.roboto(
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