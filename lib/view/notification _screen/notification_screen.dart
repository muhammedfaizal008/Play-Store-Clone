// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:play_store/utils/image_constants.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Notication and offers",style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),),
      ),
      body: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 5),
              child: Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notification_subject",style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                        ),),
                        Text("Notification Description",style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade700
                        ),),
                        Text("See unused apps"
                        ,style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 2, 20, 159)
                        ),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        height: 40,
                        width: 40,
                        ImageConstants.SIGNINSCREENLOGO),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.close))  
                  ],
                ),
              ),
            ),
            Divider()
          ],
        ),)
    );
  }
}