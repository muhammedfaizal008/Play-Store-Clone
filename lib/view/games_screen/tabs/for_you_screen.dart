// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/global_widgets/custom_carousel.dart';
import 'package:play_store/view/global_widgets/scrollable_app_with_image.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';


class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCarousel(dbName: Dummydb.gamesCarouselImagesUrl,),
            _buildSuggestedForYouSection(),
            ScrollableAppWithImage(dbname: Dummydb.gameName, title:"Premium games" )
          ],
        ),
      ),
    );
  }

  Column _buildSuggestedForYouSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25,top: 10),
          child: Row(
            children: [
              Text(
                "Sponsored",
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Suggested for You",
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, size: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: (Dummydb.gameName.length / 3).ceil(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, rowIndex) {
              return Padding(
                padding: rowIndex==0? EdgeInsets.only(top: 8,bottom: 8,right: 8,left: 18):EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: Column(
                    children: List.generate(3, (itemIndex) {
                      final index = rowIndex * 3 + itemIndex;
                      if (index < Dummydb.gameName.length) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: Dummydb.gameName),));
                            },
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            Dummydb.gameName[index]["imageurl"]!),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Dummydb.gameName[index]["name"]!,
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        Dummydb.gameName[index]["desc"]!,
                                        style: GoogleFonts.roboto(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            Dummydb.gameName[index]["ratings"]!,
                                            style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Icon(Icons.star, size: 8),
                                          SizedBox(width: 10),
                                          Text(
                                            Dummydb.gameName[index]["size"]!,
                                            style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    }),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


