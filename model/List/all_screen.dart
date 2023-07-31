// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AllTile extends StatefulWidget {
  String topic;
  String detail;
  var date;
  double percentage;
  Color color;
  AllTile({
    super.key,
    required this.topic,
    required this.detail,
    required this.date,
    required this.percentage,
    required this.color
  });
  
  

  @override
  State<AllTile> createState() => _AllTileState();
}


class _AllTileState extends State<AllTile> {

  late ValueNotifier<double> valueNotifier;
  @override
  void initState() {
  valueNotifier = ValueNotifier(widget.percentage);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.topic,
              style: GoogleFonts.galindo(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.detail,
              style: GoogleFonts.galindo(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey[400]),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Team',
              style: GoogleFonts.galindo(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 120,
                  child: Stack(
                    children: [
                      Positioned(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210_640.jpg',
                            height: 42),
                      )),
                      Positioned(
                          left: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXofg9dmWEio1TzC0C3LtVZo2y0CuAKCY8jbUmfPLfUQ&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXofg9dmWEio1TzC0C3LtVZo2y0CuAKCY8jbUmfPLfUQ&s',
                                height: 42),
                          )),
                      Positioned(
                          left: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://i.pinimg.com/236x/9b/21/97/9b21977a67533d6a9357f84f3d7b85d3.jpg',
                              height: 42,
                            ),
                          )),
                      Positioned(
                          left: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAU',
                                height: 40),
                          )),
                      Positioned(
                          left: 70,
                          child: ClipRRect(
                            
                            borderRadius: BorderRadius.circular(50),
                            child: CircleAvatar(
                              backgroundColor: Colors.orange[200],
                              child: IconButton(
                                onPressed: () {

                              }, icon: Icon(Icons.add,color: Colors.white,)),
                            )
                          ) 
                          )
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: SimpleCircularProgressBar(
                          mergeMode: false,
                          backColor: Colors.grey.shade300,
                          progressColors: [
                           widget.color
                          ],
                          valueNotifier:valueNotifier ,
                          onGetText: (double value) {
                            return Text("${widget.percentage.toInt()}%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
                          },
                        ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.calendar_month_outlined),
                Text(
                  widget.date,
                  style: GoogleFonts.galindo(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
