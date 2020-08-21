import '../shared/socicon_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  double height;
  Footer(this.height);

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 20,
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
            width: 20,
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
    );
  }
}
