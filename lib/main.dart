import 'package:flutter/material.dart';

/*
Practice Question 1: Proportional Layout with Flexible Widgets

Task: Create a Flutter application where the main screen is divided into three horizontal sections using Row and Flexible widgets. The first and third sections should take 1/4th of the screen width each, and the middle section should take the remaining 1/2.
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            flexWidget(1, Colors.green),
            flexWidget(2, Colors.grey),
            flexWidget(1, Colors.blue),
          ],
        ),
      ),
    );
  }

  Flexible flexWidget(int flexFactor, Color colorToUse) {
    return Flexible(
        flex: flexFactor,
        child: Container(
          color: colorToUse,
          child: const Center(
            //putting and centering some text inside this generated flex widget
            child: Text('Flexible widget', overflow: TextOverflow.fade),
          ),
        ));
  }
}
