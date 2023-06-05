import 'package:bmi_calculator1/constants.dart';
import 'package:bmi_calculator1/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator1/components/bottombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi_result, required this.result_text,required this.bmi_index});
  final String bmi_result;
  final String result_text;
  final String bmi_index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmi_result.toUpperCase(),
                      style: TextStyle(fontSize: 22, color: Color(0xff24d876),fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmi_index,style: TextStyle(fontSize: 100,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        result_text,
                        style: TextStyle(fontSize: 22,color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )

                  ],
                ),
              ),
            ),
            BottomButton(
              buttontext: 'RE-CALCULATE',
              onTap: (){

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

