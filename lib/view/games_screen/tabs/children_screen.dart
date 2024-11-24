// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/utils/image_constants.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/global_widgets/scrollable_app_with_image.dart';
import 'package:play_store/view/global_widgets/scrollable_single_app.dart';

class ChildrenScreen extends StatelessWidget {
  const ChildrenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstant.white,
      body: SingleChildScrollView( 
        child: Column(
          children: [
            firstSection(),
            ScrollableSingleApp(dbname: Dummydb.childrensGames, title: "New & updated"),
            ScrollableAppWithImage(dbname: Dummydb.childrensGames, title: "Recommended for you")
          ],
        ),
      ),
    );
  }

  Column firstSection() {
    return Column(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstants.CHILDRENSCREENCONTAINER))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Teacher Approved",style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                  Text("Hand picked for quality",
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    fontWeight: FontWeight.normal
                  ),
                  ),
                  Spacer(),
                  Text("Browse By age",style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 20,),
                  Row(   
                    children: [
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1,)
                        ),
                        child: Center(
                          child: Text("Ages up to 5",style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1,)
                        ),
                        child: Center(
                          child: Text("Ages 6-8",style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                            ),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1,)
                        ),
                        child: Center(
                          child: Text("Ages 9-12",style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w600
                            ),),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        
      ],
    );
  }

}