import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';

class ScrollableAppWithImage extends StatelessWidget {
  String title;
  List <Map<String, String>> dbname;
   ScrollableAppWithImage({
    required this.dbname,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                    Text("Explore some popular premium titles",style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.normal
                    ),)
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
                SizedBox(width: 10,)
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: index==0? EdgeInsets.only(top: 8,bottom: 8,right: 8,left: 18):EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: dbname),));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 135,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                      height: 60,
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    dbname[index]["imageurl"]!),
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
                                dbname[index]["name"]!,
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                dbname[index]["desc"]??"Dev Name",
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    dbname[index]["ratings"]!,
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Icon(Icons.star, size: 8),
                                  SizedBox(width: 10),
                                  Text(
                                    dbname[index]["size"]??"size",
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ],
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}