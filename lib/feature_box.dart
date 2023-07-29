import 'package:flutter/material.dart';
import 'package:allen/pallete.dart';
import 'package:gap/gap.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String header;
  final String paragraph;
  const FeatureBox({Key? key, required this.color, required this.header, required this.paragraph}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "$header",
                style: TextStyle(
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.bold,
                    color: Pallete.blackColor,
                    fontSize: 18
                ),
              ),
            ),
            const Gap(5),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "$paragraph",
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
