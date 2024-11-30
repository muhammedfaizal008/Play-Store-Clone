// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:play_store/view/dummydb.dart';
import 'package:play_store/view/global_widgets/scrollable_single_app.dart';

class IndividualAppScreen extends StatefulWidget {
  final List<Map<String, String>> dBName; // Database name
  final int selectedAppIndex;

  const IndividualAppScreen({
    required this.selectedAppIndex,
    required this.dBName,
    super.key,
  });

  @override
  _IndividualAppScreenState createState() => _IndividualAppScreenState();
}

class _IndividualAppScreenState extends State<IndividualAppScreen> {
  bool isInstalling = false;
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    
    List appDataLabels = [
      {
        "title": (widget.dBName[widget.selectedAppIndex]["ratings"] ?? "N/A") + " ★",
        "subtitle": widget.dBName[widget.selectedAppIndex]["reviewNo"] ?? "No reviews"
      },
      {"title": "Size", "subtitle": widget.dBName[widget.selectedAppIndex]["size"] ?? "Unknown"},
      {"title": "Age rating", "subtitle": widget.dBName[widget.selectedAppIndex]["ageRating"] ?? "Unknown"},
      {"title": "Downloads", "subtitle": widget.dBName[widget.selectedAppIndex]["DownloadNo"] ?? "Unknown"},
    ];

    return Scaffold(
      backgroundColor: ColorConstant.white,
      appBar: AppBar(
        backgroundColor: ColorConstant.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.black),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: firstSection(appDataLabels),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: secondSection(),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: thirdSection(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScrollableSingleApp(dbname: Dummydb.gameName, title: "Similar games"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.rotate_left),
                        SizedBox(width: 10,),
                        Text("Google Play refund policy",style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("All prices include GST.",style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                  ),),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column thirdSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rate this app",
                  style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),),
              Text("tell others what you think",
                  style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.normal),),
              SizedBox(height: 10),    
              Align(
                alignment: Alignment.center,
                child: RatingStars(
                value: value,
                onValueChanged: (v) {
                  //
                  setState(() {
                    value = v;
                  });
                },
                starBuilder: (index, color) => Icon(
                  Icons.star,
                  color: color,
                  size: 40,
                ),
                starCount: 5,
                starSize: 70,
                valueLabelColor: const Color(0xff9b9b9b),
                valueLabelTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0),
                valueLabelRadius: 10,
                maxValue: 5,
                starSpacing: 2,
                maxValueVisibility: true,
                valueLabelVisibility:false,
                valueLabelPadding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                valueLabelMargin: const EdgeInsets.only(right: 8),
                starOffColor: const Color(0xffe7e8ea),
                starColor: Colors.yellow,
              ),
              ),
              Text("Write a review",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.blue.shade900
              ),)
            ],
          );
  }

  Column secondSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 180,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About this app",
                    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Brief description about the app.",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstant.GREYCOLOR,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Data safety",
                    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "About the data security of the app.",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstant.GREYCOLOR,
                ),
              ),
            ],
          );
  }

  Column firstSection(List<dynamic> appDataLabels) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.dBName[widget.selectedAppIndex]["iconUrl"] ??
                    widget.dBName[widget.selectedAppIndex]["imageurl"] ??
                    "https://via.placeholder.com/70",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dBName[widget.selectedAppIndex]["name"] ?? "Unknown App",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.dBName[widget.selectedAppIndex]["devname"] ?? "Unknown Developer",
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Contains ads · In-app purchases",
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: appDataLabels.length,
            separatorBuilder: (context, index) => Container(
              width: 1,
              height: 40,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            itemBuilder: (context, index) => SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appDataLabels[index]["title"]!,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    appDataLabels[index]["subtitle"]!,
                    style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: isInstalling
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isInstalling = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle play logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "Play",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : InkWell(
                  onTap: () {
                    setState(() {
                      isInstalling = true;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 30, 6, 208),
                    ),
                    child: Center(
                      child: Text(
                        "Install",
                        style: GoogleFonts.roboto(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
