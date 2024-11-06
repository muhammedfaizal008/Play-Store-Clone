// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_store/view/apps_screen/apps_screen.dart';
import 'package:play_store/view/books_screen/books_screen.dart';
import 'package:play_store/view/games_screen/games_screen.dart';
import 'package:play_store/view/offers_screen/offers_screen.dart';
import 'package:play_store/view/search_screen/search_screen.dart';


class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int currentIndex=0;
  List screens=[
    GamesScreen(),
    AppsScreen(),
    SearchScreen(),
    OffersScreen(),
    BooksScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 65,
        child: Theme(
          data: Theme.of(context).copyWith( 
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: Color.fromARGB(255, 79, 79, 79),
            selectedItemColor: Color.fromARGB(255, 1, 59, 107),
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              ),
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              ),  
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                currentIndex=value;
              });
            },
            items: [
            BottomNavigationBarItem(
              activeIcon: BottomNavbarTranstion(
                icon:Icon(Icons.sports_esports,color: Color.fromARGB(255, 1, 81, 146),size: 22)
              ),
              icon: Icon(Icons.sports_esports_outlined,size: 22,),label: "Games",),
            BottomNavigationBarItem(
              activeIcon: BottomNavbarTranstion(icon: Icon(Icons.apps,color: Color.fromARGB(255, 1, 81, 146))),
              icon: Icon(Icons.apps_outlined),label: "Apps"),
            BottomNavigationBarItem(
              activeIcon: BottomNavbarTranstion(icon: Icon(Icons.search,color: Color.fromARGB(255, 1, 81, 146))),
              icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(
              activeIcon: BottomNavbarTranstion(icon: Icon(Icons.local_offer,color: Color.fromARGB(255, 1, 81, 146))),
              icon: Icon(Icons.local_offer_outlined),label: "Offers"),
            BottomNavigationBarItem(
              activeIcon: BottomNavbarTranstion(icon: Icon(Icons.book,color: Color.fromARGB(255, 1, 81, 146))),
              icon: Icon(Icons.book_outlined),label: "Books"),
          ]),
        ),
      ),
    );
  }
}

class BottomNavbarTranstion extends StatelessWidget {
  Widget icon;
   BottomNavbarTranstion({
    super.key,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 129, 204, 238),    
      ),
      child: Center(child: icon),
    );
  }
}