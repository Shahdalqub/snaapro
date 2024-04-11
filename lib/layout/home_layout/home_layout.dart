import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaapro/mudeuls/chat/chat_screen.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/mudeuls/message%20screen/massenger_screen.dart';
import 'package:snaapro/mudeuls/user/user_page.dart';
import 'package:snaapro/mudeuls/search_screen/search_page.dart';
import 'package:snaapro/shared/cubit/cubit.dart';
import 'package:snaapro/shared/cubit/states.dart';

import '../../mudeuls/setting_page/setting_page.dart';



class HomeLayout extends StatefulWidget {
String username;
String job;
String city;
HomeLayout({required this.username,required this.job,required this.city});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
late List screens=[
  UserPage(username: widget.username,job: widget.job,city: widget.city),
  SettingPage(),
  SearchPage(),
  ChatsScreen(),
  HomePage(),
];

  @override

  // final GlobalKey<DrawerControllerState> _drawerKey =
  // GlobalKey<DrawerControllerState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Color c=Color.fromRGBO(255,116,49,1);

  @override
  Widget build(BuildContext context) {
   // var cubits=Cubits.get(context);
    return  BlocProvider(
      create: (BuildContext context)=>Cubits(),
      child: BlocConsumer<Cubits,Status>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            key: _scaffoldKey,
            body: screens[Cubits.get(context).currentindex],

            bottomNavigationBar: BottomNavigationBar(

              currentIndex:Cubits.get(context).currentindex,
              onTap: (index){
                //if(currentindex==1)  _scaffoldKey.currentState?.openDrawer();
               Cubits.get(context).changBottomNavBar(index);
              },
              items: Cubits.get(context).botNavBar,

            ),

          );
        },

      ),
    );




  }
}