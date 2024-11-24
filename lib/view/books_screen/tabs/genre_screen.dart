import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/games_screen/tabs/individual_screen_for_categories/individual_screen_for_categories.dart';

class NewReleases extends StatelessWidget {
  const NewReleases({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
  {"category": "Fiction", "icon": Icons.book_outlined},
  {"category": "Non-Fiction", "icon": Icons.library_books_outlined},
  {"category": "Mystery & Thriller", "icon": Icons.lock_outline},
  {"category": "Science Fiction & Fantasy", "icon": Icons.science_outlined},
  {"category": "Romance", "icon": Icons.favorite_border_outlined},
  {"category": "Historical", "icon": Icons.history_outlined},
  {"category": "Children’s Books", "icon": Icons.child_care_outlined},
  {"category": "Fantasy", "icon": Icons.face_outlined},
  {"category": "Classics", "icon": Icons.school_outlined},
  {"category": "Self-Help & Personal Development", "icon": Icons.self_improvement_outlined},
];

    return  Scaffold(
      backgroundColor: ColorConstant.white,
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualScreenForCategories(title: categories[index]["category"]),));
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(categories[index]["icon"],size: 19,),
                      SizedBox(width: 20,),
                      Text(categories[index]["category"],style: GoogleFonts.roboto(
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