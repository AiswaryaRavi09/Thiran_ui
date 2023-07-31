
import 'package:flutter/material.dart';
import 'package:thiran_ui_design/model/List/all_screen.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            AllTile(
              color: Colors.blue,
                topic: 'App Animation',
                detail: 'Today, Shared by -Unbox Digital',
                date: 'July 25,2021-July 22,2021',
                percentage: 65),
            const SizedBox(
              height: 18,
            ),
            AllTile(

              color: const Color.fromARGB(255, 67, 225, 149),
                topic: 'Dashboard Design',
                detail: 'Today, Shared by -Ui Been',
                date: 'July 25,2021-July 30,2021',
                percentage: 85 ),
            const SizedBox(
              height: 20,
            ),
            AllTile(
              color: const Color.fromARGB(255, 232, 155, 38),
                topic: 'UI/UX Design',
                detail: 'Today, Shared by -Unbox',
                date: 'July 25,2021-July 30,2021',
                percentage: 30),
          ],
        ),
      ),
    );
  }
}
