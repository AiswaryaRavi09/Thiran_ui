import 'package:flutter/material.dart';

class bar extends StatelessWidget {
  const bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: const AlwaysStoppedAnimation(Colors.indigo),
                minHeight: 15,
                value: 0.77,




                
              ),
            )
          ],
        ),
      ),
    );
  }
}
