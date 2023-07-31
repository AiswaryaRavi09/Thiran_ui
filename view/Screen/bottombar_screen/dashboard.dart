// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../model/List/progress.dart';
import '../../../model/List/task.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAU',fit: BoxFit.cover,height: 45,),
                  ),
                  radius: 25,
                  backgroundColor: Colors.grey[400],
                ),
                Spacer(),
                IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.search_outlined,size: 45,color: Colors.black54,)
                )
              ],
            ),
           SizedBox(height: 25,),
            Text('Hello',
            style: GoogleFonts.galindo(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
              )
            ),
            SizedBox(height: 15,),
            Text('Alex Marconi',
            style: GoogleFonts.galindo(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
              )
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressTile(color: Colors.orangeAccent, icon: Icons.access_time_outlined, text: 'In Progress'),

                SizedBox(width: 20,),
                 ProgressTile(color: Colors.blue[800], icon: Icons.cached_outlined, text: 'Ongoing')
              ],
            ),
            SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressTile(color: const Color.fromARGB(255, 99, 207, 103), icon: Icons.file_open_outlined, text: 'Completed'),
                SizedBox(width: 20,),

                ProgressTile(color: const Color.fromARGB(255, 219, 77, 67), icon: Icons.access_time, text: 'Cancel')
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Text('Daily Task',style: GoogleFonts.alike(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
               )
               ),
               Spacer(),
               Text('All Task',style: GoogleFonts.alike(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey
              )),
               Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: Colors.grey,)
              ],
            ),
            SizedBox(height: 25,),
            TaskTile(
              value: 0.7,
              image: 'https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210_640.jpg',
              image1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXofg9dmWEio1TzC0C3LtVZo2y0CuAKCY8jbUmfPLfUQ&s',
              image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5FkyHb_y5NyLo5Olsgb3SXH1NEuUAFPQpag&usqp=CAU',
             text: 'App Animation',color: Color.fromARGB(255, 122, 88, 180), ),
             SizedBox(height: 10,),
             TaskTile(
              value: 0.9,
               image: 'https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210_640.jpg',
               image1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXofg9dmWEio1TzC0C3LtVZo2y0CuAKCY8jbUmfPLfUQ&s',
               image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5FkyHb_y5NyLo5Olsgb3SXH1NEuUAFPQpag&usqp=CAU',
             text: 'Dashboard Design',color: Colors.green,
            ),
             SizedBox(height: 10,),
             TaskTile(
              value: 0.5,
               image: 'https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210_640.jpg',
               image1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXofg9dmWEio1TzC0C3LtVZo2y0CuAKCY8jbUmfPLfUQ&s',
               image2: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5FkyHb_y5NyLo5Olsgb3SXH1NEuUAFPQpag&usqp=CAU',
             text: 'UI/UX Design',color: Colors.orangeAccent, )
          ],
             
           ),
        ),
      ),
    );
  }
}