import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:bmi_calculator/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BmiCalculator());

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      title: 'BMI Calculator',
      home: const InputScreen()
    );
  }
}
