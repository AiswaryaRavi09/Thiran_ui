
// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressTile extends StatelessWidget {
  var color;
  var icon;
  String text;
  
   ProgressTile({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  
    } );

  @override
  Widget build(BuildContext context) {
    return InkWell(
     
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Icon(icon,color: Colors.white,),
            SizedBox(height: 10,),
            Text(text,style: GoogleFonts.galindo(color: Colors.white,fontSize: 20),)
          ],
          
        ),
      ),
    );
  }
}