import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  List<String> _designation = [
    'Bachelor of Technology',
    'XII (Senior Secondary)',
    'X (Secondary)'
  ];
  List<String> _institution = [
    'G.B. Pant Engineering College',
    'Spring Meadows Public School',
    'Spring Meadows Public School'
  ];
  List<String> _marks = ['8.99 CGPA', '94%', '8.4 CGPA'];
  List<String> _year = ['2020', '2016', '2014'];
  List<Widget> _createEducationCard(height, width) {
    List<Widget> result = [];
    for (int i = 0; i < _designation.length; i++) {
      if (i % 2 == 0) {
        result.add(Container(
          // height: height * 0.12,
          // color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _designation[i],
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    _institution[i],
                    style: TextStyle(
                        fontSize: width * 0.035, color: Colors.grey[500]),
                  ),
                  Text(_marks[i], style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
              CircleAvatar(
                radius: width * 0.1,
                child: Text(
                  _year[i],
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.035),
                ),
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ));
        result.add(SizedBox(
          height: height * 0.02,
        ));
      } else {
        result.add(Container(
          // height: height * 0.12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: width * 0.1,
                child: Text(
                  _year[i],
                  style:
                      TextStyle(fontSize: width * 0.035, color: Colors.white),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _designation[i],
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: width * 0.05,
                    ),
                  ),
                  Text(
                    _institution[i],
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: width * 0.035),
                  ),
                  Text(_marks[i], style: TextStyle(fontSize: width * 0.035)),
                ],
              ),
            ],
          ),
        ));
        result.add(SizedBox(
          height: height * 0.02,
        ));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(width * 0.02, 0, width * 0.02, 0),
        // width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            Text(
              'Education',
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
            ..._createEducationCard(height, width),
          ],
        ));
  }
}
