import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:bmi_calculator/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      title: 'BMI Calculator',
      home: InputScreen()
    );
  }
}
