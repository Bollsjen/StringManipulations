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

      // Top header
      appBar: AppBar(

        // Top header tekst
        title: Text('String Manipulation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          // Tekst input felt
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a string here...',
            ),
            controller: textController,
          ),

          // Knap til lower case
          ManipulationButton(title: 'LOWER CASE', color: Colors.blue[400], function: Lowercase),

          // Knap til upper case
          ManipulationButton(title: 'UPPER CASE', color: Colors.blue[400], function: Uppercase),

          // Knap til capitalize
          ManipulationButton(title: 'CAPITALIZE', color: Colors.blue[400], function: Capitalize),

          // Knap til reverse
          ManipulationButton(title: 'REVERSE', color: Colors.blue[400], function: Reverse)
        ],
      ),
    );
  }

  // Metode til lower case
  void Lowercase(){
    textController.text = textController.text.toLowerCase();
  }

  // Metode til upper case
  void Uppercase(){
    textController.text = textController.text.toUpperCase();
  }

  // Metode til capitalize
  void Capitalize(){
    String text = textController.text;
    String firstChar = text[0].toUpperCase();
    text = text.substring(1,text.length);
    text = firstChar + text;
    textController.text = text;
  }

  // Metode til reverse
  void Reverse(){
    textController.text = textController.text.split('').reversed.join();
  }
}