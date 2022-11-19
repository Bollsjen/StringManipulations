import 'package:flutter/material.dart';

class ManipulationButton extends StatelessWidget {
  final String title;
  final color;
  final function;

  const ManipulationButton(
      {
        Key? key,
        required this.title,
        required this.color,
        required this.function
      }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            color: color
        ),
        child: TextButton(
          onPressed: () {
            function();
          },
          child: Center(
              child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  )
              )
          ),
        ),
      ),
    );
  }
}