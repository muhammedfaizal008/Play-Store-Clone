// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';

class TextWithIconContainer extends StatelessWidget {
  int sectionNo;//section no 1-youmightlike 2-exploregames 3-exploreapps
  int index;// for taking every element
   TextWithIconContainer({
    super.key,
    required this.index,
    required this.sectionNo
  });

  @override
  Widget build(BuildContext context) {
    List name=[];
    if (sectionNo==1){
       name=Dummydb.youMayLike;
    }
    else if(sectionNo==2){
       name=Dummydb.exploreGames;
    }
    else{
       name=Dummydb.exploreApps;
    }
    return Container(
      padding: EdgeInsets.all(8),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstant.SECONDARYCOLOR,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Expanded( 
            child: Text(
              name[index]["name"],style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Center(child: Icon(name[index]["icon"],color:ColorConstant.BLUECOLOR,size: 20,)),
        ],
      ),
    );
  }
}