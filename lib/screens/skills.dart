import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<String> _skills = [
    'HTML',
    'CSS',
    'JS',
    'Python',
    'Django',
    'Machine Learning'
  ];

  List<double> _proficiency = [
    0.9,
    0.8,
    0.7,
    0.8,
    0.6,
    0.5
  ];

  List<String> img = [
    'html.jpg',
    'css.jpg',
    'js.jpg',
    'python.jpg',
    'django.jpg',
    'ml.jpg'
  ];

  List<Widget> _skillWidgetCreator(height, width) {
    List<Widget> skill = [];
    for (int i = 0; i < _skills.length; i++) {
      skill.add(Container(
        // color: Colors.lightBlue,
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/images/' + img[i],
                height: height * 0.05,
              ),
              title: Text(_skills[i],style: TextStyle(
                fontSize: width * 0.04
              ),),
              trailing: Text('${_proficiency[i] * 100} %',style: TextStyle(
                  fontSize: width * 0.03
              ),),
            ),
            LinearPercentIndicator(
              // width: 140.0,
              lineHeight: height * 0.015,
              percent: _proficiency[i],
              animationDuration: 2000,
              restartAnimation: true,
              backgroundColor: Colors.grey,
              animation: true,
              progressColor: Colors.blue,
            ),
          ],
        ),
      ));
      skill.add(SizedBox(
        height: height*0.001,
      ));
    }
    return skill;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;

    return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(width * 0.02, 0, width * 0.02, 0),
        child: Container(
          child: Column(
            children: [
              Text(
                'Skills',
                style: TextStyle(
                  color: Color.fromRGBO(64, 112, 244, 1),
                  fontSize: width * 0.12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
//
              ..._skillWidgetCreator(height, width),
            ],
          ),
        ));
  }
}
