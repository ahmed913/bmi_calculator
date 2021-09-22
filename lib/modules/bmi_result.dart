import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;

  BmiResult(
      {
       @required this.isMale,
       @required this.age,
       @required this.result
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI RESULT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Gender : ${isMale ? 'Male' : 'Female'}",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Result : $result ",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Age : $age",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            Image(
              image: NetworkImage('https://alsapakistan.com/wp-content/uploads/2021/01/bmi-chart.png'),
            ),
          ],
        ),
      ),
    );
  }
}
