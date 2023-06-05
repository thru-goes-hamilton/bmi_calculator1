import 'package:flutter/material.dart';
import '../constants.dart';

class Gender extends StatelessWidget {
  final String gender;
  final IconData icon;
  Gender({required this.gender,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}