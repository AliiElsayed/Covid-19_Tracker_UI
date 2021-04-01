
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19/components/counter.dart';
import 'package:covid_19/components/header.dart';
import 'package:covid_19/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedVal = 'Egypt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              topText: 'All you need',
              bottomText: 'is stay at home',
              imagePath: 'assets/icons/Drcorona.svg',
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/maps-and-flags.svg',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: SvgPicture.asset(
                        'assets/icons/dropdown.svg',
                      ),
                      value: selectedVal,
                      onChanged: (value) {
                        setState(() {
                          selectedVal = value;
                        });
                      },
                      items: [
                        'Egypt',
                        'libya',
                        'Oman',
                        'Indonesia',
                        'Germany',
                        'Italy'
                      ].map<DropdownMenuItem<String>>((String country) {
                        return DropdownMenuItem(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Case Update\n',
                              style: kTitleStyle,
                            ),
                            TextSpan(
                              text: 'Newest update on mars',
                              style: TextStyle(
                                color: Color(0xFF959595),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See Details',
                        style: kDetailsStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: kShadowColor.withOpacity(0.16),
                          offset: Offset(0, 4),
                          // spreadRadius: 7.0,
                          blurRadius: 30.0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CounterContainer(
                          number: 12690,
                          state: 'Infected',
                          wantedColor: 0xFFFF8748,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        CounterContainer(
                          number: 1390,
                          state: 'Deaths',
                          wantedColor: 0xFFFF4848,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        CounterContainer(
                          number: 120,
                          state: 'Recovered',
                          wantedColor: 0xFF36C12C,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spread of Virus',
                        style: kTitleStyle,
                      ),
                      Text(
                        'see details',
                        style: kDetailsStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 5.0),
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor.withOpacity(0.16),
                      offset: Offset(0,10),
                      blurRadius: 30,
                      //spreadRadius: 5,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.contain,
                )),
          ],
        ),
      ),
    );
  }
}
