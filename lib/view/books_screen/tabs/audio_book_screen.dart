import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_store/view/dummydb.dart';

class AudioBookScreen extends StatelessWidget {
  const AudioBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            EbookScrollableWidget(),
            EbookScrollableWidget(),
            EbookScrollableWidget()
          ],
        ),
      )
    );
  }
  
}
class EbookScrollableWidget extends StatelessWidget {
  const EbookScrollableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25,top: 10),
          child: Row(
            children: [
              Text("Top sellers",style: GoogleFonts.roboto(
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
        ),
        SizedBox(height: 5,),
        SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: index==0?EdgeInsets.only(left: 25,top: 10):EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualAppScreen(selectedAppIndex: index, dBName: dbname),));
              },
              child: SizedBox(
                width: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(Dummydb.booksDetails[index]["imageurl"]!)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 9,),
                  Text(Dummydb.booksDetails[index]["name"]!,style: GoogleFonts.roboto(fontSize: 10),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text(Dummydb.booksDetails[index]["ratings"]!+"★",style: GoogleFonts.roboto(fontSize: 10),),
                      SizedBox(width: 10,),
                      if (Dummydb.booksDetails[index]["price"] != null) ...[
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          Dummydb.booksDetails[index]["price"]!,
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
    );
  }
}
