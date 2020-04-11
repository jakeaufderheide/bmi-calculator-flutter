import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'result.dart';

class ResultsPage extends StatelessWidget {
  final Result result;
  ResultsPage({this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Your Result',
                style: kHeaderTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.getBmiTypeString().toString().toUpperCase(),
                      style: kLargeButtonTextStyle,
                    ),
                    Text(
                      result.getBmiString().toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      result.getRecommendation(),
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ReusableBarButton(
              label: "RE-CALCULATE",
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
