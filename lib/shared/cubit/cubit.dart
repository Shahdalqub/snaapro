import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaapro/shared/cubit/states.dart';

import '../../mudeuls/chat/chat_screen.dart';
import '../../mudeuls/home/home_page.dart';
import '../../mudeuls/search_screen/search_page.dart';
import '../../mudeuls/setting_page/setting_page.dart';
import '../../mudeuls/user/user_page.dart';

class Cubits extends Cubit<Status>{
  Cubits():super(InitialState());
  static Cubits get(context)=>BlocProvider.of(context);


  void openChatinuserPage(context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatsScreen()));
    emit(OpenChatInUserPage());
}



  int currentindex=0;


  List<BottomNavigationBarItem> botNavBar=[
    BottomNavigationBarItem(
      icon: Icon(Icons.person,
      ),
      label:'user',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings,
      ),
      label: 'setting',

    ),
    BottomNavigationBarItem(

      icon: Icon(Icons.search,
      ),
      label:'search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message,
      ),
      label:'Messanger',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home,
      ),
      label: 'home',
    ),


  ];
  void changBottomNavBar(int index){
    currentindex=index;
    emit(BottonNavBar());
  }
}