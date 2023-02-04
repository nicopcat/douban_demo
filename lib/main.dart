import 'package:flutter/material.dart';
import 'components/tabbar_item.dart';
import 'views/home/home.dart';
import 'views/group/group.dart';
import 'views/profile/profile.dart';
import 'views/subject/subject.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget{
  var _themeColor = Color.fromARGB(44, 139, 54, 1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "豆瓣电影App",
      theme: ThemeData(
        primaryColor: _themeColor,
        primarySwatch: Colors.green,
        // highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      home:  MyStackPage()
    );
  }
}


class MyStackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage>{
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('豆瓣电影'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex:  _curIndex,
        fixedColor: Color(0xFF2C8B36),
        unselectedItemColor:Color.fromRGBO(150, 149, 141, 1),
        selectedLabelStyle: TextStyle(fontSize: 10 ),
        unselectedLabelStyle: TextStyle(fontSize: 10 ),
        showUnselectedLabels:true,
        onTap:(e){
          setState(() { 
            this._curIndex = e;
          });
        },
        items: [
          TabBarItem("tabbar_home","首页"),
          TabBarItem("tabbar_subject","书影音"),
          TabBarItem("tabbar_group","小组"),
          TabBarItem("tabbar_profile","我的"),
          // BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: '我的'),
        ],
      ),
      body: IndexedStack(
        index: _curIndex,
        children: [
        HomePage(),
        SubjectPage(),
        GroupPage(),
        ProfilePage()
      ]),
    );
  }
}