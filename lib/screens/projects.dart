import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(width * 0.02, 0, width * 0.02, 0),

        color: Colors.white,
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Projects',
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
            GestureDetector(
              onTap: (){
                _launchURL('https://github.com/himanshumalasi/soccerbot');
              },
              child:Container(
                width: double.infinity,
                height: height * 0.25,
                child: Stack(

                  children: [
                    Image.asset(
                      'assets/images/chatbot.png',
                      fit: BoxFit.cover,


                      width: double.infinity,
                      // color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    Container(
                        height: height * 0.25,
                        // padding: EdgeInsets.all(10),
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'SoccerBot',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.1,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontFamily: 'Roboto',
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                    ),

                  ],
                ),
              ),
            ),
            
            SizedBox(
              height: height * 0.02,
            ),
            GestureDetector(
              onTap: (){
                _launchURL('https://github.com/mukulvashisht1026/PlanMyTrip');
              },
              child: Container(
                width: double.infinity,
                height: height * 0.25,
                child: Stack(
                  fit: StackFit.loose,
                  // alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset(
                      'assets/images/trip.jpg',
                      fit: BoxFit.cover,

                      width: double.infinity,
                    ),
                    Container(
                        height: height * 0.25,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        width: double.infinity,
                        child: Center(
                          child: Text('PlanMyTrip ',
                              style: TextStyle(
                                fontSize: width * 0.1,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                //fontWeight: FontWeight.bold,
                              )),
                        )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
