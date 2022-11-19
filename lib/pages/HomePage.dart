import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:string_manipulations/components/manipulation_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('String Manipulation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a string here...',
            ),
            controller: textController,
          ),
          ManipulationButton(title: 'LOWER CASE', color: Colors.blue[400], function: Lowercase),
          ManipulationButton(title: 'UPPER CASE', color: Colors.blue[400], function: Uppercase),
          ManipulationButton(title: 'CAPITALIZE', color: Colors.blue[400], function: Capitalize),
          ManipulationButton(title: 'REVERSE', color: Colors.blue[400], function: Reverse)
        ],
      ),
    );
  }

  void Lowercase(){
    textController.text = textController.text.toLowerCase();
  }

  void Uppercase(){
    textController.text = textController.text.toUpperCase();
  }

  void Capitalize(){
    String text = textController.text;
    String firstChar = text[0].toUpperCase();
    text = text.substring(1,text.length);
    text = firstChar + text;
    textController.text = text;
  }

  void Reverse(){
    textController.text = textController.text.split('').reversed.join();
  }
}