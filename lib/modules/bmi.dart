import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';


class BmiScreen extends StatefulWidget {


  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int weight = 60;
  int age = 28;
  double height = 120.0;
  bool ismale = true;

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
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color:ismale ? Colors.red : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image(
                              image: AssetImage(
                                  "assets/images/male.png"
                              ),
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          ismale = false;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color:!ismale ? Colors.red : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  "assets/images/female.png"
                              ),
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[400]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      children:
                      [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.red,
                        inactiveColor:Colors.white ,
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        }

                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                    print(weight);
                                  });
                                },
                                child:Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Colors.red,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                    print(weight);
                                  });
                                },
                                child:Icon(Icons.add),
                                mini: true,
                                backgroundColor: Colors.red,
                              ),



                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                    print(age);
                                  });
                                },
                                child:Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Colors.red,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                    print(age);
                                  });
                                },
                                child:Icon(Icons.add),
                                mini: true,
                                backgroundColor: Colors.red,
                              ),



                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                50.0
              ),

              color: Colors.red,

            ),
            child: MaterialButton(
              onPressed:()
              {
                double result  = weight / ((height/100) * (height/100));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResult(

                        ismale: ismale,
                        age: age,
                        result: result.round(),
                      ),
                    )
                );
              },
              child: Text(
                "CALCULATOR",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
