// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/global_widgets/scrollable_app_with_image.dart';
import 'package:play_store/view/global_widgets/scrollable_single_app.dart';

class PremiumScreen extends StatelessWidget {
   const PremiumScreen({
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ScrollableSingleApp(dbname: Dummydb.gameName,title: "Recommended For You",),
            ),
            ScrollableAppWithImage(dbname: Dummydb.gameName,title: "Get Started",),
            ScrollableSingleApp(dbname: Dummydb.gameName,title: "Games on Sale",),
            ScrollableSingleApp(dbname: Dummydb.gameName,title: "Offline games",),
            
          ],
        ),
      )
    );
  }
}



