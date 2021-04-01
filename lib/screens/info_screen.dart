import 'package:covid_19/components/header.dart';
import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/components/symptomp_Viewer.dart';
import 'package:covid_19/components/instruction_card.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              topText: 'Get to know',
              bottomText: 'About Covid-19',
              imagePath: 'assets/icons/coronadr.svg',
            ),
            Container(
              padding: EdgeInsets.only(left:10.0,right: 10.0,bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: kTitleStyle,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: Row(
                      children: [
                        SymptompCard(
                          description: 'Headache',
                          imagePath: 'assets/images/headache.png',
                        ),
                        SymptompCard(
                          description: 'Cough',
                          imagePath: 'assets/images/cough.png',
                        ),
                        SymptompCard(
                          description: 'Fever',
                          imagePath: 'assets/images/fever.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Prevention',
                    style: kTitleStyle,
                  ),
                  InstructionCard(
                    title: 'Wear face mask',
                    subTitle:
                        'Since the start of the corona virus outbreak some places have fully embraced wearing face masks.',
                    imagePath: 'assets/images/wear_mask.png',
                  ),
                  InstructionCard(
                    title: 'Wash your hands',
                    subTitle:
                    'Wash hands with soap and water for at least 20 seconds. Use the cleanest water possible.',
                    imagePath: 'assets/images/wash_hands.png',
                  ),
                  SizedBox(height: 20.0,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
