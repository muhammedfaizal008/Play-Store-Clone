// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:play_store/view/apps_screen/tabs/categories_screen_apps.dart';
import 'package:play_store/view/apps_screen/tabs/children_screen_apps.dart';
import 'package:play_store/view/apps_screen/tabs/for_you_screen_apps.dart';
import 'package:play_store/view/apps_screen/tabs/top_chart_screen_apps.dart';
import 'package:play_store/view/books_screen/tabs/audio_book_screen.dart';
import 'package:play_store/view/books_screen/tabs/comics_screen.dart';
import 'package:play_store/view/books_screen/tabs/e_books_screen.dart';
import 'package:play_store/view/books_screen/tabs/genre_screen.dart';
import 'package:play_store/view/books_screen/tabs/top_seller.dart';
import 'package:play_store/view/games_screen/tabs/categories_screen.dart';
import 'package:play_store/view/games_screen/tabs/children_screen.dart';
import 'package:play_store/view/games_screen/tabs/for_you_screen.dart';
import 'package:play_store/view/games_screen/tabs/premium_screen.dart';
import 'package:play_store/view/games_screen/tabs/top_chart_screen.dart';
import 'package:play_store/view/global_widgets/circle_avatar_bottom_sheet.dart';
import 'package:play_store/view/notification%20_screen/notification_screen.dart';


class TabsBarLayout extends StatelessWidget {
  String screenName;
   TabsBarLayout({
    required this.screenName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
      String t1="For you";
      String t2="Top chart";
      String t3="Children";
      String t4="Premium";
      String t5="Categories";
      List <Widget>screens=[
            ForYouScreen(),
            TopChartScreen(),
            ChildrenScreen(),
            PremiumScreen(),
            CategoriesScreen()
      ];

    if(screenName=="Apps"){
       t1="For you";
       t2="Top chart";
       t3="Children";
       t4="Categories";
       t5 = ""; 
       
       screens=[
            ForYouScreenApps(),
            TopChartScreenApps(),
            ChildrenScreenApps(),
            CategoriesScreenApps()
      ];
    }
    else if (screenName == "Books") {
      t1 = "E Books";
      t2 = "Audiobooks";
      t3 = "Comics";
      t4 = "Top seller";
      t5 = "Genres";
      screens=[
            EBooksScreen(),
            AudioBookScreen(),
            ComicsScreen(),
            TopSeller(),
            NewReleases()
      ];
    }
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            fit: BoxFit.contain,
            "assets/images/appbar_logo.png"),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationScreen(),));
            }, icon: Icon(Icons.notifications_outlined,size: 25,)),
            SizedBox(width: 15,),
            CircleAvatarBottomSheet(),
            SizedBox(width: 15,),
          ],
          bottom: TabBar(
            labelColor: Color.fromARGB(255, 2, 107, 193),
            indicatorColor: Color.fromARGB(255, 2, 107, 193),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs:[
              Tab(text: t1),
              Tab(text: t2),
              Tab(text: t3),
              Tab(text: t4),
              if (t5.isNotEmpty) Tab(text: t5),
          ]),
        ),
        body: TabBarView(
          children: screens
        ),
      ),
    );
  }
}

