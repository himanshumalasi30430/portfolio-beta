import 'package:flutter/material.dart';
import 'package:portfolio/shared/socicon_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  List<IconData> _icons = [
    Socicon.mail,
    Icons.phone,
    Icons.location_on,
  ];
  List<String> _names = [
    'himanshu.malasi@unthinkable.co',
    '7982352334',
    'New Delhi, Delhi',
  ];
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  List<Widget> _create(height,width){
    List<Widget> result = [];
    for(int i=0;i<_icons.length;i++){
      result.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(_icons[i]),
          SizedBox(
            width: height*0.02,
          ),
          Text(
            _names[i],
            style: TextStyle(
                fontSize: width*0.04,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
          ),
        ],));
      result.add(SizedBox(
        height: height*0.02,
      ));
    }
    return result;
  }


  @override
  Widget build(BuildContext context)  {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(

              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(children: [
                Text(
                  'Contact',
                  style: TextStyle(
                    color: Color.fromRGBO(64, 112, 244, 1),
                    fontSize: width * 0.12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ..._create(height,width),
        Container(
          height: height*0.1,
          color: Color.fromRGBO(14, 36, 49, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue[900],
                child: IconButton(
                  onPressed: (){
                    _launchURL('https://www.facebook.com/malasihimanshu');
                  },
                  icon: Icon(Socicon.facebook, color: Colors.white),
                ),
              ),
              SizedBox(
                width: width*0.05,
              ),
              CircleAvatar(
                backgroundColor: Colors.pink[500],
                child: IconButton(
                    onPressed: (){
                      _launchURL('https://instagram.com/malasihimanshu');
                    },
                    icon: Icon(
                        Socicon.instagram,
                        color: Colors.white
                    )
                ),),
              SizedBox(
                width: width*0.05,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconButton(
                    onPressed: (){
                      _launchURL('https://twitter.com/himanshumalasi');
                    },
                    icon: Icon(Socicon.twitter,
                        color: Colors.white
                    )
                ),
              )
            ],
          ),
        ),
              ]
              ),
            ),


          ],
        ));
  }
}
