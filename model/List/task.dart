// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thiran_ui_design/view/Screen/dashboard_design_screen.dart';

class TaskTile extends StatelessWidget {
  String text;
  var image;
  var image1;
  var image2;
  Color color;
  double value;
 
  var ontap;
   TaskTile({
    super.key,
    required this.image,
    required this.image1,
    required this.image2,
    required this.text,
    required this.color,
    required this.value,
   
    this.ontap
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) => DesignDashboard(),));
       
      },
      child: Container(
        height: 100,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10)
       ),
        
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.check_circle_outline,size: 30,
              color: const Color.fromRGBO(189, 189, 189, 1),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                    style: GoogleFonts.akshar(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    )),
                   SizedBox(height: 5,),
                   Container(
                    width: 150,
                    height: 10,
                    
                     child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                       child: LinearProgressIndicator(
                         backgroundColor: Colors.grey[200],
                         valueColor: AlwaysStoppedAnimation(color),
                         minHeight: 20.0,
                         value: value,
                       ),
                     ),
                   )
                  ],
                ),
                SizedBox(
                  width: 70,
                  child: Stack(
                    children: [
                      Positioned(
                        
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(image,height: 40,),),
                      ),
                        SizedBox(height: 5,),
                        Positioned(
                          left: 20,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(image1,height: 40,),),
                        ),
                        SizedBox(height: 5,),
                        Positioned(
                         left: 45,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(image2,height: 40,),),
                        ),
                        SizedBox(height: 5,),
                        
                       
                      
                    ],
                  ),
                ),
                InkWell(
                  onTap: ontap,
                  child: Icon(Icons.arrow_forward_ios_outlined,size: 20, color: Colors.grey[400]))
            ],
          ),
        ),
      ),
    );
  }
}