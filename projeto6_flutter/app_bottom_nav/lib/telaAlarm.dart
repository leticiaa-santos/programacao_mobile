import 'package:flutter/material.dart';

class TelaAlarm extends StatelessWidget {
  const TelaAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Container(
                  width: 400,
                  height: 640,
                  color: Color(0xFF1010F3),
                ),
                Container(
                  width: 400,
                  height: 640,
                  color: Color(0xFF017001),
                ),
                Container(
                  width: 400,
                  height: 640,
                  color: Color(0xFFF3106F),
                ),
                Container(
                  width: 400,
                  height: 640,
                  color: Color(0xFFF3BE10),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}