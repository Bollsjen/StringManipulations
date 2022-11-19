import 'package:flutter/material.dart';

// Generel knap til klasse
class ManipulationButton extends StatelessWidget {
  final String title;
  final color;
  final function;

  // Constructor
  const ManipulationButton(
      {
        Key? key,
        required this.title,
        required this.color,
        required this.function
      }) : super(key: key);

  // UI del
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          // Bagrundsfarve
            color: color
        ),
        // Knappen
        child: TextButton(

          // Knap trykke event
          onPressed: () {

            // Metode kald
            function();
          },
          // Centrering af tekst elementet
          child: Center(
            // Teksten elementet
              child: Text(
                // Teksten
                  title,
                  // Tekst elementet
                  style: TextStyle(
                    // Tekst farve
                      color: Colors.white,

                      // Tekst vægt
                      fontWeight: FontWeight.bold,

                      // Tekst størrelse
                      fontSize: 18
                  )
              )
          ),
        ),
      ),
    );
  }
}