import 'package:flutter/material.dart';
import 'package:play_store/view/global_widgets/circle_avatar_bottom_sheet.dart';
import 'package:play_store/view/notification%20_screen/notification_screen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}