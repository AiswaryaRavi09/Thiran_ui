// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../model/List/graph.dart';

class DesignDashboard extends StatefulWidget {
  const DesignDashboard({super.key});

  @override
  State<DesignDashboard> createState() => _DesignDashboardState();
}

class _DesignDashboardState extends State<DesignDashboard> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = true;

  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(85);

  }
  List<Color> gradientColors = [
  Colors.green,
  Colors.greenAccent
  ];

  bool showAvg = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dashboard Design',
                        style: GoogleFonts.galindo(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Today, Shared by - Unbox Digital',
                        style: GoogleFonts.galindo(
                            fontSize: 23,
                            fontWeight: FontWeight.w100,
                            color: Colors.grey[500])),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: SimpleCircularProgressBar(
                            mergeMode: false,
                            backColor: Colors.grey.shade300,
                            progressColors: [
                              const Color.fromARGB(255, 67, 225, 149),
                              const Color.fromARGB(255, 67, 225, 149),
                            ],
                            valueNotifier: valueNotifier,
                            onGetText: (double value) {
                              return Text('${85}%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
                            },
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Team',
                                style: GoogleFonts.alike(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
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
                                            'https://media.istockphoto.com/id/1448069480/photo/happy-young-indian-student-boy-working-on-laptop-and-studying-in-college-library-with.jpg?s=612x612&w=0&k=20&c=71MwQVGgPRq0E22hUoB9Ud7mKMKlnxIdeaaT4MgroEE=',
                                            height: 40),
                                      )),
                                      Positioned(
                                          left: 20,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.network(
                                                'https://i.pinimg.com/236x/9b/21/97/9b21977a67533d6a9357f84f3d7b85d3.jpg',
                                                height: 40),
                                          )),
                                      Positioned(
                                          left: 40,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.network(
                                              'https://cdn.pixabay.com/photo/2017/09/16/17/42/business-woman-2756210_640.jpg',
                                              height: 40,
                                            ),
                                          )),
                                      Positioned(
                                          left: 60,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.network(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5FkyHb_y5NyLo5Olsgb3SXH1NEuUAFPQpag&usqp=CAU',
                                                height: 40),
                                          )),
                                      Positioned(
                                          left: 70,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.orangeAccent[200],
                                                child: IconButton(
                                                    onPressed: () {
                                                     print("add another photo");
                                                    },
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    )),
                                              )))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text('Deadline',
                                style: GoogleFonts.actor(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.grey[500],
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('July 25,2021-July 30,2021',
                                    style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[500])),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text('Project Progress',
                        style: GoogleFonts.akshar(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStatePropertyAll(Colors.blue[400]),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Current user flow',
                            style: GoogleFonts.actor(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStatePropertyAll(Colors.blue[700]),
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Create wireframe',
                            style: GoogleFonts.actor(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStatePropertyAll(Colors.blue[700]),
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Transform to visual design',
                            style: GoogleFonts.actor(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('Project Overview',
                            style: GoogleFonts.alike(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        Spacer(),
                        Text('Weekly',
                            style: GoogleFonts.actor(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500])),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Container(
                   height: 250,
                   width: double.infinity,
                    child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 10,
                minY: 0.3,
                maxY: 6,
                titlesData:LineTitles.getTitleData() ,

                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Colors.white)
                ),
               lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 2.5),
                    FlSpot(2, 2),
                    FlSpot(4, 4),
                    FlSpot(6, 2.5),
                    FlSpot(8, 4.5),
                    FlSpot(9.5, 3),
                    FlSpot(13, 5)
                  ],
                  isCurved: true,
                  gradient: LinearGradient(
                    colors: gradientColors
                    ),
                 barWidth: 2,
                 isStrokeCapRound: true,
                 dotData:  FlDotData(
                  show: false,
                  ),
                 belowBarData: BarAreaData(
                  show: true,

                  gradient: LinearGradient(
                    colors: gradientColors
                    .map((color) => color.withOpacity(0.1))
                    .toList(),
                  )
                 )
                )
               ]
              )
                    ),
                  )
                  ],
                ),
              ),
                    ],
                  ),
            ),
          )),
    );
  }
}
