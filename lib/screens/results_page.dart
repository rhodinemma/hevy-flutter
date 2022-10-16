import 'package:flutter/material.dart';
import 'package:flutter101/widgets/bottom_button.dart';

import '../constants.dart';
import '../widgets/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25.0),
                child: const Text('Your result', style: kTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text('Normal', style: kResultTextStyle),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
              buttonTitle: 'Re-calculate',
              onTap: () {
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
