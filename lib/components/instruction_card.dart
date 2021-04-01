import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19/constants.dart';

class InstructionCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;

  InstructionCard({
    this.title,
    this.subTitle,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.only(top: 5.0),
      padding: EdgeInsets.all(5.0),
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
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 1,
            child: Image.asset(
              imagePath,
              height: 135,
            ),
          ),
          Positioned(
            left: 125,
            top: 22.0,
            right: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTitleStyle.copyWith(fontSize: 16.0),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10.0,
            child: SvgPicture.asset(
              'assets/icons/forward.svg',
              height: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
