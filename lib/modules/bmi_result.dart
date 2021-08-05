import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool ismale ;
  final int age;
  final int result;

  BmiResult({
    required this.ismale,
    required this.age,
    required this.result,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 30.0,

          ),

        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,

          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Grande : ${ismale ? 'Male' : 'Female'} ",
              style: TextStyle(
                fontSize: 30.0,

              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Age : $age",
              style: TextStyle(
                fontSize: 30.0,

              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Bmi result : $result.",
              style: TextStyle(
                fontSize: 30.0,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
