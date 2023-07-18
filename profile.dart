import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              
            },
            child: Icon(Icons.arrow_circle_right),
          )
        ],
      ),
    );
  }
}