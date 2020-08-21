import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home.dart';
import './screens/skills.dart';
import './screens/contact.dart';
import './screens/education.dart';
import './screens/projects.dart';
import './screens/about.dart';

void main() {
  runApp(MaterialApp(
    title: 'Portfolio App',
    home: MyApp(),
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> items = [
    'Home',
    'About',
    'Education',
    'Skills',
    'Projects',
    'Contact'
  ];
  
  CircleAvatar _drawerIconCreator(IconData ic,Color c){
    return CircleAvatar(
      backgroundColor: Colors.white,
        child: Icon(
          ic,
          size: 25,
          color: c,
        )
    );
  }
  
  
  
  
  List<IconData> icons = [
          Icons.home,
          Icons.info_outline,
          Icons.account_balance,
          Icons.lightbulb_outline,
          Icons.list,
          Icons.perm_contact_calendar,
  ];

  List<Color> colors = [
    Colors.cyan[900],
    Colors.blue[900],
    Colors.purple[900],
    Colors.yellow[900],
    Colors.brown[900],
    Colors.green[900]
  ];
  
  

  PageController controller = PageController();

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
  }

  List<Widget> _createList(items, icons,colors) {
    List<Widget> itemList = [];
    for (int i = 0; i < items.length; i++) {
      itemList.add(_listTile(items[i], icons[i], i,colors[i]));
    }
    return itemList;
  }

  Widget _listTile(item, icon, index,color) {
    return GestureDetector(
      onTap: () {
        print('tapped');
        print(index);
        try {
          _scrollToIndex(index);
        } catch (e) {}
        Navigator.of(context).pop();
      },
      child: ListTile(
        leading: _drawerIconCreator(icon,color),
        contentPadding: EdgeInsets.all(10),
        title: Text(
          item,
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Container(
          color: Color.fromRGBO(14, 36, 49, 1),
          child: ListView(
            children: _createList(items, icons,colors),
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Himanshu',
          style: TextStyle(color: Color.fromRGBO(14, 36, 49, 1)),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.1,
        actions: [
          IconButton(
            iconSize: 35,
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openEndDrawer();
            },
          )
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          Home(),
          About(),
          Education(),
          Skills(),
          Project(),
          SingleChildScrollView(child: Contact()),
        ],
      ),
    );
  }
}
