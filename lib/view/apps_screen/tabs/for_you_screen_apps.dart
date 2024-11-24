// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/global_widgets/custom_carousel.dart';
import 'package:play_store/view/global_widgets/scrollable_three_apps.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';

class ForYouScreenApps extends StatelessWidget {
  const ForYouScreenApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCarousel(dbName:  Dummydb.appsCarouselImagesUrl,),
            SuggestedForYouSection(),
            ScrollableThreeApps()
          ],
        ),
      ),
    );
  }
}



class SuggestedForYouSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Text(
                "Sponsored",
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Suggested for You",
                style: GoogleFonts.roboto(
                  fontSize: 14,
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
            itemCount: (Dummydb.appName.length / 3).ceil(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, rowIndex) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 270,
                  child: Column(
                    children: List.generate(3, (itemIndex) {
                      final index = rowIndex * 3 + itemIndex;
                      if (index < Dummydb.appName.length) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(dBName: Dummydb.appName,selectedAppIndex: index,),));
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
                                            Dummydb.appName[index]["imageurl"]!),
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
                                        Dummydb.appName[index]["name"]!,
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        Dummydb.appName[index]["desc"]!,
                                        style: GoogleFonts.roboto(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            Dummydb.appName[index]["ratings"]!,
                                            style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Icon(Icons.star, size: 8),
                                          SizedBox(width: 10),
                                          Text(
                                            Dummydb.appName[index]["size"]!,
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
