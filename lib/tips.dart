import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:bmi/components/reusable_card.dart';
import 'result_page.dart';
final List<String> tips_under=[
  "Eat more frequently.",
  "Choose nutrient-rich foods.",
  "Try smoothies and shakes.",
  "Watch when you drink water.",
  "Make every bite count.",
  "Top it off. Add extras to your dishes for more calories .",
  "Have an occasional treat. ",
  "Exercise."
];
final List<String> tips_normal=[
  "Limit portion size to control calorie intake.",
"Add healthy snacks during the day if you want to gain weight.",
"Be as physically active as you can be.",
"Talk to your doctor about your weight if you think that you weigh too much or too little."
];
final List<String>  tips_over=[
  "Exercise",
  "Reduce screen time.",
  "Watch out for portion distortion. ",
  "Eat 5 servings of fruits and veggies a day.",
  "Don't skip breakfast."
];
class Tips extends StatelessWidget {
  final resultT;
  final bmiR;
  final interpr;
  List<String>  tip;
  Tips({this.resultT,this.bmiR,this.interpr});
  @override
  Widget build(BuildContext context) {
    print(resultT);
    if(resultT=='Normal')
    {
      tip=tips_normal;
      print("1");
    }
    if(resultT=='Overweight')
      {
        tip=tips_over;
        print("2");
      }
    if(resultT=='Underweight')
      {
        tip=tips_under;
        print("3");
      }
    int len = tip.length;
    int t=0;
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
        child: Text('Tips for you!',
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
      Expanded(
        child: SizedBox(
          height: 200.0,
          child: new ListView.builder(
            //scrollDirection: Axis.horizontal,
            itemCount: tip.length,

            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text('• ${tip[index]}',style: kResultTextStyle,),
              );
            },
          ),
        ),
      ),
//      RaisedButton(
//        child: Text('Stay healthy!'),
//        onPressed: () {
//          // Navigate to second route when tapped.
//        Navigator.pop(context);
//        },
//      ),
    ],
    ) ,
    ),
    ),
    ],
      ),
    );
  }
}
