// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_store/view/individual_app_screen/individual_app_screen.dart';



class CustomCarousel extends StatelessWidget {
   List<Map<String, String>> dbName;
   CustomCarousel({
    required this.dbName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        CarouselSlider(
          items: List.generate(
            dbName.length,
            (index) => InkWell(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: dbName),)); 
              },
              child: Container(
                margin: EdgeInsets.all(10),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      dbName[index]["imageUrl"]!, 
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(10)),
                      ),
                      child: Text(
                        'Update available',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 15,
                    child: Text(
                      dbName[index]["desc"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    right: 15,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage(dbName[index]["iconUrl"]!))
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dbName[index]["name"]!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                dbName[index]["devName"]!,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                          child: Text('Install'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
                        ),
            ),
          ),
          options: CarouselOptions(
            height: 275, 
            viewportFraction: 0.9,
            initialPage: 0, 
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 6),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
            },
          ),
        ),
      ],
    );
  }
}

// Container(
//               width: double.infinity,
//               height: 250, 
//               margin: EdgeInsets.symmetric(horizontal: 8), 
//               decoration: BoxDecoration(
//                 color: images[index]["color"],
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                   Color(0xffcdedff),
//                   images[index]["color"]
//                 ]),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child:Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 170,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
//                       image: DecorationImage(
//                       fit: BoxFit.fill,
//                       alignment: Alignment.topCenter,
//                       image: NetworkImage(images[index]["imageUrl"])),
//                     )
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8),
//                     child: Text("Description",style: GoogleFonts.roboto(color: Colors.white),),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   images[index]["iconUrl"]!),
//                               fit: BoxFit.cover,
//                             ),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               images[index]["name"]!,
//                               style: GoogleFonts.roboto(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w600,
//                                 color: ColorConstant.white
//                               ),
//                             ),
//                             Text(
//                               images[index]["desc"]!,
//                               style: GoogleFonts.roboto(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.normal,
//                                 color: ColorConstant.white
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   images[index]["ratings"]!,
//                                   style: GoogleFonts.roboto(
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.normal,
//                                     color: ColorConstant.white
//                                   ),
//                                 ),
//                                 Icon(Icons.star, size: 8,color: ColorConstant.white),
//                                 SizedBox(width: 10),
//                                 Text(
//                                   images[index]["size"]!,
//                                   style: GoogleFonts.roboto(
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.normal,
//                                     color: ColorConstant.white
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 10,)
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             ),