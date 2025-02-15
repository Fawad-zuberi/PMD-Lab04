import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String itemText;
  const CustomCard({super.key, required this.itemText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 2, // Border width
          ),
          borderRadius: BorderRadius.circular(11),
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E3C72), // Dark Blue
              Color(0xFF2A5298), // Light Blue
              Color(0xFFB0BEC5), // Grey
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            itemText,
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ));
  }
}
