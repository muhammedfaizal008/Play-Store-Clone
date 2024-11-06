// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:play_store/utils/image_constants.dart';
import 'package:play_store/view/dummydb.dart';

class CircleAvatarBottomSheet extends StatelessWidget {
  const CircleAvatarBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          backgroundColor:  Color.fromARGB(255, 233, 239, 251),
          isScrollControlled: true,
          context: context, builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width:350,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close,size: 20,)),
                      Center(
                        child: Image.asset(
                          ImageConstants.GOOGLELOGO,
                          height: 50,
                          width: 100,
                        ),
                      ),
                      SizedBox(width: 48), 
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                              ),
                              SizedBox(width: 10),
                              Text("User_name"),
                            ],
                          ),
                        ),
                        Container(
                          height: 28,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1,color:Colors.black54)
                          ),
                          child: Center(child: Text("Manage your Google Account",style: TextStyle(
                            fontSize: 12
                          ),)),
                        ),
                        Divider(),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding:  EdgeInsets.only(right: 10,left: 10),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 50,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Icon(Dummydb.bottomsheetcontainers[index]["icondata"]),
                                  SizedBox(width: 10,),
                                  Text(Dummydb.bottomsheetcontainers[index]["text"])
                                ],
                              ),
                            ),
                          ),),
                          
                      ],
                    ),
            
                  ),
                  Column(
                    children: List.generate(3, (index) => Container(
                    height: 50,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 28),
                      child: Row(
                        children: [
                          Icon(Dummydb.bottomsheetcontainers2[index]["icondata"]),
                          SizedBox(width: 10,),
                          Text(Dummydb.bottomsheetcontainers2[index]["text"])
                        ],
                      ),
                    ),
                    ),)
                    )
                ],
              ),
              
            ),
          ),);
      },
      child: CircleAvatar(
        radius: 20,
      ),
    );
  }
}