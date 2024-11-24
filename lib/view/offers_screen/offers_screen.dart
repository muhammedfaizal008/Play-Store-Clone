// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/utils/color_constant.dart';
import 'package:play_store/utils/image_constants.dart';

import 'package:play_store/view/global_widgets/circle_avatar_bottom_sheet.dart';
import 'package:play_store/view/notification%20_screen/notification_screen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
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
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              OffersAppsSection(),
              offersGameSection(),
              redeemCodeSection()
            ],
          ),
        ),
      ),
    );
  }

  Column offersGameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Offers that games that you might like",style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 10,),
              Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://play-lh.googleusercontent.com/rmeYWgMG2UFDchlVgc8dqeJorYjDow--inXszJpQOgiSyiX5v0wat3nduEoQmCX9b9vAn_H4_Pw=w1296-h2160-rw"))
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 8),
                    child: Text("Use Code Indus50 and Get 50%off on the first Purchase",style: GoogleFonts.roboto(
                      color: ColorConstant.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),),
                  )),
              ),
              SizedBox(height: 10,),
              Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://play-lh.googleusercontent.com/-h1v2RpmYoGtd8p1bpmndykykVUAS5yzq4LqtZxAZSXh9u8NCv2eERqwtqkBd8pFwA=s48-rw"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           "Indus:Battle Royale",
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Battle Royale",
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Icon(Icons.star, size: 8),
                              SizedBox(width: 10),
                              Text(
                                "1.5 GB",
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
                SizedBox(height: 10,)
            ],
          );
  }

  Column redeemCodeSection() {
    return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: ColorConstant.SECONDARYCOLOR,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        ImageConstants.SIGNINSCREENLOGO,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 10), 
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Got a code?",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)
                            ),
                            SizedBox(height: 5), 
                            Text(
                              "Redeem a Play promo code or gift card here. If you have a code for a specific app, redeem it in that app.",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.grey[700],)
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Redeem code",style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.blue.shade900,)),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              )
            ],
          );
  }

  Column OffersAppsSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Offers that apps that you might like",style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 10,),
                Container(
                  height: 225,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://play-lh.googleusercontent.com/PdvoccXYnmzqzuoVq7sS_ILvV0JlGTWkvNnYR_5elXS8-8ooMYw-8uO-gNZ0yWQQXA=w851-h2160-rw"))
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 8),
                      child: Text("Use Code GoRapido and Get 50%off on the first ride",style: GoogleFonts.roboto(
                        color: ColorConstant.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),),
                    )),
                ),
                SizedBox(height: 10,),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://play-lh.googleusercontent.com/vIMymGDzl2arE2styucCrIO35Qv6yX7iJJYZGmIUMXXV_mT5OyR5MjpkfHFB3tc8bA=w240-h480-rw"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             "Duolingo:language lessons",
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "learn languages",
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "4.5",
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(Icons.star, size: 8),
                                SizedBox(width: 10),
                                Text(
                                  "1.5 GB",
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
                  SizedBox(height: 10,)
            ],
          );
  }
}