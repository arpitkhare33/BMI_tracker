import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/components/reusable_card.dart';
import 'package:bmi/tips.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData= MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: Center(
              child: Text('Your Result',
                style: kTitleTextStyle,
                  ),
            ),
          ),),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
                    cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText.toUpperCase(),style:kResultTextStyle,),
                Text(bmiResult,style:kBmiTextStyle,),

                Text(interpretation,style:kBodyTextStyle,textAlign: TextAlign.center,),
                Container(
                  width: queryData.size.width,
                  height: 70,


                  child: RaisedButton(
                    child: Text('Unlock a HEALTHY SECRET!',style: TextStyle(fontSize: 22),),
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                    color: kBottomContainerColour,
                    onPressed:() {


                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tips(bmiR: bmiResult,interpr: interpretation,resultT: resultText,)),
                      );
                    } ,
                  ),
                ),
//                BottomButton(
//                  buttonTitle:'Unlock a HEALTHY SECRET',
//
//                    onTap: () {
//                    // Navigate to second route when tapped.
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => Tips(bmiR: bmiResult,interpr: interpretation,resultT: resultText,)),
//                      );
//                    },
//                  ),

    ],
    ) ,
    ),
          ),
        ],
      ),
    );
  }
}
