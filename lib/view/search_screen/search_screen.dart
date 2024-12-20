// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/global_widgets/circle_avatar_bottom_sheet.dart';
import 'package:play_store/view/global_widgets/text_with_icon_container.dart';
import 'package:play_store/view/search_screen/on_tap_search_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        toolbarHeight: 65,
        title: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => OnTapSearchScreen(),));
          },
          child: Container(
            padding: EdgeInsets.all(8),
            height:45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ColorConstant.SECONDARYCOLOR
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text("Search Apps & Games",style: GoogleFonts.roboto(
                  fontSize: 13,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400
                )),
                Icon(Icons.mic_none)
              ],
            )
          ),
        ),
        actions: [
          CircleAvatarBottomSheet(),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              _BuildYouMightLikeSection(),
              _buildExploreGamesSection(),
              _buildExploreAppsSection()
          
            ],
          ),
        ),
      )
    );
  }

  Column _buildExploreAppsSection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Explore apps",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),),
            ),
            SizedBox(
              height: 280, 
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 60, 
                ),
                itemCount: 8, 
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextWithIconContainer(sectionNo: 3,index: index,),
                )
              ),
            ),
          ],
        );
  }

   _buildExploreGamesSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Explore games",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),),
              ),
              SizedBox(
                height: 220, 
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 60, 
                  ),
                  itemCount: 6, 
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextWithIconContainer(sectionNo: 2,index: index,),
                  )
                ),
              ),
            ],
          );
  }

   _BuildYouMightLikeSection() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("You might like",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),),
                ),
                SizedBox(
                  height: 150, 
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), 
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, 
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 60, 
                    ),
                    itemCount: 4, 
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: TextWithIconContainer(sectionNo: 1,index: index,),
                    )
                  ),
                ),
              ],
            );
  }
}


