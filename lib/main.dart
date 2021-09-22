import 'package:bmi_cal_abdullah/modules/login_screen.dart';
import 'package:bmi_cal_abdullah/utils/theme.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: myTheme,
      home: LoginScreen(),
    );
  }
}

