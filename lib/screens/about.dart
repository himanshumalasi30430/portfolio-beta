import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - kToolbarHeight - MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(width * 0.02,0,width * 0.02,0),
        width: MediaQuery.of(context).size.width,
        height: double.maxFinite,
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              Text(
                'About',
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
              Container(
                width: width  * 0.7,
                height: height * 0.4,
                // color: Colors.grey[300],
                child: Image.asset(
                  'assets/images/himanshu_about.jpg',
//                  width: 300,
//                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height:height * 0.02),
              Text(
                'I\'m Himanshu',
                style: TextStyle(
                    fontSize: width * 0.08,
                    letterSpacing: 1.5,
                    color: Color.fromRGBO(14, 36, 49, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                ),
              ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(width * 0.02, 0, width * 0.02, 0),
                child: Text(
                  'I am a hard working, honest individual. I am a good timekeeper, always willing to learn new skills. I am friendly, helpful and polite, have a good sense of humour. I am able to work independently in busy environments and also within a team setting. I am outgoing and tactful, and able to listen effectively when solving problems.',style: TextStyle(
                    fontSize: width*MediaQuery.of(context).devicePixelRatio <= 580 ? width * 0.032 : width * 0.04,
                    letterSpacing: 1.5,
                    fontFamily: 'Roboto'
                ),
                ),
              ),

            ],
          ),
        ));
  }
}
