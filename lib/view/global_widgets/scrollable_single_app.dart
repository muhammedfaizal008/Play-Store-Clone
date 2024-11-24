import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';

class ScrollableSingleApp extends StatelessWidget {
  String title;
  List <Map<String, String>> dbname;
   ScrollableSingleApp({
    required this.dbname,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
                  children: [
                    Row(
                      children: [
                        Text(title,style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                          ),
                          ),
                        Spacer(),
                        Icon(Icons.arrow_forward),
                        SizedBox(width: 10,)
                      ],
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: dbname),));
                            },
                            child: SizedBox(
                              width: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(dbname[index]["imageurl"]!)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(height: 9,),
                                Text(dbname[index]["name"]!,style: GoogleFonts.roboto(fontSize: 10),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text(dbname[index]["ratings"]!+"★",style: GoogleFonts.roboto(fontSize: 10),),
                                    SizedBox(width: 10,),
                                    if (dbname[index]["price"] != null) ...[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        dbname[index]["price"]!,
                                        style: GoogleFonts.roboto(fontSize: 10),
                                      ),
                                    ],
                                  ],
                                )
                              ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ],
    );
  }
}