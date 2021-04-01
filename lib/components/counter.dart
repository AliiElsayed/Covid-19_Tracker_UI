import 'package:flutter/material.dart';

class CounterContainer extends StatelessWidget {
  final int wantedColor;
  final String state;
  final int number;
  CounterContainer(
      {@required this.number,
      @required this.state,
      @required this.wantedColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          height: 23.0,
          width: 23.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(wantedColor).withOpacity(0.26)),
          child: Container(
            height: 11.0,
            width: 11.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: Color(wantedColor),
                width: 2.0,
              ),
            ),
          ),
        ),
        Text(
          '$number',
          style: TextStyle(
            fontSize: 25.0,
            color: Color(wantedColor),
          ),
        ),
        Text(
          '$state',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF959595),
          ),
        ),
      ],
    );
  }
}
