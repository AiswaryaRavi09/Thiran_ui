// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
    Chart({super.key});
  
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       height: 500,
       width: 500,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 6,

            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.red)
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
                FlSpot(11, 5)
              ],
              isCurved: true,
              color: Color.fromARGB(255, 0, 185, 95),
             barWidth: 5,
             belowBarData: BarAreaData(
              show: true,

             )
            )
           ]
          )
        ),
      ),
    );
  }
}