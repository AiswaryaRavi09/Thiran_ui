// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thiran_ui_design/view/Screen/project_screen.dart';
import 'package:thiran_ui_design/view/Screen/bottombar_screen/dashboard.dart';
import 'package:thiran_ui_design/view/Screen/bottombar_screen/mail_screen.dart';
import 'package:thiran_ui_design/view/Screen/bottombar_screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int Index = 0;
  List<Widget> screen = [
    Home(),
    ProjectScreen(),
    MailScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            
            backgroundColor: Colors.blue[800],
            onPressed: () {},
            elevation: 5,
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),
          child: BottomAppBar(
           // height: 70,
            
            shape: CircularNotchedRectangle(),
            notchMargin: 7,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Index = 0;
                        print(Index);
                      });
                    },
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                      color: Index == 0 ? Colors.blue[800] : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        Index = 1;
        
                        print(Index);
                      });
                    },
                    icon: Icon(
                      Icons.file_copy_rounded,
                      size: 25,
                      color: Index == 1 ? Colors.deepPurpleAccent[800] : Colors.grey,
                    )),
                    SizedBox(width: 50,),
                IconButton(
                    onPressed: () {
                      setState(() {
                        Index=2;
                      });
                    },
                    icon: Icon(
                      Icons.mail,
                      size: 25,
                      color: Index == 2 ? Colors.blue[800] : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                       Index=3;
                      });
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                      color: Index == 3 ? Colors.blue[800] : Colors.grey,
                    )
                  ),
              ],
            ),
          ),
        ),
        body: screen[Index]);
  }
}
