import 'package:flutter/material.dart';

class ReusableTab extends StatelessWidget {

  final String dateText;
  final Color tileColor;
  final Color textColor;

  ReusableTab({required this.dateText, required this.tileColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child:
      Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
        child:  Text(
          dateText,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      )
    );
  }
}
