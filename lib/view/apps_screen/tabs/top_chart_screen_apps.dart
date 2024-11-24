import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';

class TopChartScreenApps extends StatelessWidget {
  const TopChartScreenApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Dummydb.appName.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: Dummydb.appName),));
                },
                child: Card( 
                  margin: EdgeInsets.zero,
                  color: ColorConstant.white,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${index + 1}",
                            style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                Dummydb.appName[index]["imageurl"]!,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300], 
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Dummydb.appName[index]["name"]!,
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                Dummydb.appName[index]["desc"]!,
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Text(
                                    Dummydb.appName[index]["ratings"]!,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Icon(Icons.star, size: 12, color: Colors.yellow),
                                  SizedBox(width: 10),
                                  Text(
                                    Dummydb.appName[index]["size"]!,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}