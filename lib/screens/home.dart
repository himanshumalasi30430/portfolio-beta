import '../shared//socicon_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// Running on MI A2
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    var height = MediaQuery.of(context).size.height - kToolbarHeight - MediaQuery.of(context).padding.top;
    print(height);
    print(width);
    int factor;
    if(width*MediaQuery.of(context).devicePixelRatio <= 580){
      factor = 11;
    }else{
      factor = 9;
    }

    var topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi,',
          style: TextStyle(
              fontFamily: 'Poppins',
              letterSpacing: 2,
              fontSize: width / factor,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(14, 36, 49, 1)),
        ),
        SizedBox(height: height * 0.02),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m ',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                    fontSize: width / factor,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(14, 36, 49, 1)),
              ),
              Text(
                'Himanshu',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                    fontSize: width / factor,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(64, 112, 244, 1)),
              )
            ]),
        SizedBox(height: height * 0.02),
        Text(
          'Flutter Developer',
          style: TextStyle(
              fontFamily: 'Poppins',
              letterSpacing: 2,
              fontSize: width / factor,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(14, 36, 49, 1)),
        )
      ],
    );
    var topContent = Container(
      // color: Colors.grey[700],
      height: height * 0.4,
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          topContentText,
        ],
      ),
    );
    var iconList = Container(
      width: 0.1 * width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: (width * 0.1),
            backgroundColor: Colors.blue[800],
            child: IconButton(
              icon: Icon(
                Socicon.linkedin,
                size: (width * 0.1) * 0.6,
                color: Colors.white,
              ),
              onPressed: () {
                _launchURL(
                    'https://www.linkedin.com/in/himanshu-malasi-7ba160160');
              },
              color: Color.fromRGBO(14, 36, 49, 1),
            ),
          ),
          SizedBox(
            height: (height * 0.45) *0.01,
          ),
          CircleAvatar(
            radius: width * 0.1,
            backgroundColor: Colors.black,
            child: IconButton(
                icon: Icon(
                  Socicon.github,
                  size: (width * 0.1) * 0.6,
                  color: Colors.white,
                ),
                onPressed: () {
                  _launchURL('https://github.com/himanshumalasi');
                },
                color: Color.fromRGBO(14, 36, 49, 1)),
          )
        ],
      )
    );
    var bottomImageContainer = Container(
      // color: Colors.lightBlue,
      width: width *0.6,
      height: (height * 0.45 ) * 0.9,
      child: Image.asset('assets/images/himanshu.png'),
    );
    var bottomContent = Container(
      height: 0.45 * height,
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconList,
          bottomImageContainer,
        ],
      ),
    );



    return Container(
        padding: EdgeInsets.fromLTRB(width * 0.02,0,width * 0.02,0),
        // color: Colors.green,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.04),
            topContent,
            SizedBox(height: height * 0.03),
            bottomContent,
          ],
        ));
  }
}
