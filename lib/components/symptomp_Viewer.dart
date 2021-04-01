import 'package:flutter/material.dart';
import 'package:covid_19/constants.dart';

class SymptompCard extends StatelessWidget {
  final String description;
  final String imagePath;
  SymptompCard({@required this.description, @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      padding: EdgeInsets.all(10.0),
      height: 125.0,
      width: 115.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: kShadowColor.withOpacity(0.30),
            blurRadius: 10.0,
            offset: Offset(0, 13),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          // SizedBox(height: 5.0,),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
