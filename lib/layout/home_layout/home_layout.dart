import 'package:flutter/material.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/mudeuls/message%20screen/massenger_screen.dart';
import 'package:snaapro/mudeuls/user/user_page.dart';
import 'package:snaapro/search_page.dart';

import '../../mudeuls/setting_page/setting_page.dart';



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
    SettingPage(),
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

    );




  }

}