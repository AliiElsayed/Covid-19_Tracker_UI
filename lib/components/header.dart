import 'package:flutter/material.dart';
import 'package:covid_19/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19/screens/info_screen.dart';

class Header extends StatelessWidget {
  final String topText;
  final String bottomText;
  final String imagePath;

  Header(
      {@required this.topText,
      @required this.bottomText,
      @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 300,
        width: double.infinity,
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 45.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/virus.png',
            ),
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              child: Align(
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                ),
                alignment: Alignment.topRight,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoPage(),
                  ),
                );
              },
            ),
            SizedBox(
             // height: 1.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    imagePath,
                    width: 240.0,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    child: Text(
                      '$topText\n$bottomText',
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    top: 32,
                    left: 140,
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
