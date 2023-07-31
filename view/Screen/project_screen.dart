// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thiran_ui_design/view/Screen/projects/all_screen.dart';
import 'package:thiran_ui_design/view/Screen/projects/completed_screen.dart';
import 'package:thiran_ui_design/view/Screen/projects/ongoing_screen.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen>
    with TickerProviderStateMixin {
  

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAUhttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJudMz9qUHiSxWcqSvqYetMr6abdib-FBCn0zgLlOpMDrBMVZq87d8C2SisSRcFE7SfA4&usqp=CAU',fit: BoxFit.cover,height: 45,),
                  ),
                  radius: 30, backgroundColor: Colors.grey[350]),
                Spacer(),
                Icon(Icons.search, size: 35)
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text('project',
                style: GoogleFonts.akshar(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue[800],
                  ),
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: GoogleFonts.actor(fontSize: 20,fontWeight: FontWeight.w700),
                       
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Ongoing',
                        style: GoogleFonts.actor(fontSize: 20,fontWeight: FontWeight.w700),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                       style: GoogleFonts.actor(fontSize: 20,fontWeight: FontWeight.w700),
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  AllScreen(),
                  OngoingScreen(),
                  CompletedScreen()
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
