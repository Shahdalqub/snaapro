import 'package:flutter/material.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/mudeuls/message%20screen/massenger_screen.dart';
import 'package:snaapro/mudeuls/user/user_page.dart';
import 'package:snaapro/search_page.dart';

import '../setting_page/setting_page.dart';

class HomeLayout extends StatefulWidget {

  final String username;
  final String job;
  final String city;
  HomeLayout( { required this.username, required this.job, required this.city});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  // final GlobalKey<DrawerControllerState> _drawerKey =
  // GlobalKey<DrawerControllerState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentindex=0;
  late List screens=[
    HomePage(),
  Drawer(
  width: 200,
  backgroundColor: Colors.grey.shade300,

  child: ListView(
  children: [
  Container(
  height: 150.0,
  child: DrawerHeader(

  child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Expanded(
  child: Icon(Icons.settings,
  color: Colors.grey,
  size: 50,),
  ),
  Expanded(
  child: Align(
  alignment: Alignment.topCenter,
  child: Text('الاعدادات',
  style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  ),),
  ),
  ),
  ],
  )
  ),
  ),
  ListTile(
  onTap: (){},
  title: Container(
  decoration: BoxDecoration(
  shape: BoxShape.rectangle,
  border: Border.all(
  color: Colors.grey,
  width: 2.0,
  ),
  ),

  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text('حالة التفرغ',
  style: TextStyle(
  fontSize: 15,
  color: Colors.grey,
  ),),
  ],
  ),
  ),
  ),
  ),
  ListTile(
  onTap: (){},
  title: Container(
  decoration: BoxDecoration(
  shape: BoxShape.rectangle,
  border: Border.all(
  color: Colors.grey,
  width: 2.0,
  ),
  ),
  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text('الاقتراحات',
  style: TextStyle(
  fontSize: 15,
  color: Colors.grey,
  ),)
  ],
  ),
  ),
  ),
  ),
  ListTile(
  onTap: (){},
  title: Container(
  decoration: BoxDecoration(
  shape: BoxShape.rectangle,
  border: Border.all(
  color: Colors.grey,
  width: 2.0,
  ),
  ),
  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text('تسجيل الخروج',
  style: TextStyle(
  fontSize: 15,
  color: Colors.grey,
  ),)
  ],
  ),
  ),
  ),
  ),
  ],
  ),
  ),
    SearchPage(),
    MessengerDesighn(),
    UserPage(username:widget.username,job:widget.job,city:widget.city ),
  ];
  List<String> label=[
    'home',
    'setting',
    'search',
    'Messanger',
    'user',
  ];

  Color c=Color.fromRGBO(255,116,49,1);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      body: screens[currentindex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 15.0,
        showSelectedLabels: false,
        currentIndex: currentindex,
        onTap: (index){
          //if(currentindex==1)  _scaffoldKey.currentState?.openDrawer();
          setState(() {

            currentindex=index;
             //currentindex=index;

          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: c),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
               color:c,),
            label: 'setting',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
              color: c,),
            label:'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,
              color: c,),
            label:'Messanger',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
              color: c,),
            label:'user',
          ),

        ],

      ),
      drawer: SettingPage(),
    );




  }

}