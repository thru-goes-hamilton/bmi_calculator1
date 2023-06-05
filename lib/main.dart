import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData.dark();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0xFF0A0E21),

        ),
      ),
      home: InputPage(),
    );
  }
}


