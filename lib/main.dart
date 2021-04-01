import 'package:flutter/material.dart';
import 'package:covid_19/screens/home_Screen.dart';

import 'package:covid_19/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldBGColor,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kAllTextsColor),
        ),
      ),
      home: HomePage(),
    );
  }
}
