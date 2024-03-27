import 'package:flutter/material.dart';
import 'package:snaapro/mudeuls/admin_screen/admin_page.dart';
import 'package:snaapro/mudeuls/createAccunte/create_account_screen.dart';
import 'package:snaapro/mudeuls/firstPage/firstPage.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/mudeuls/search_screen/search_page.dart';
import 'package:snaapro/mudeuls/setting_page/setting_page.dart';


import 'layout/home_layout/home_layout.dart';
/////////
void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:firstPage(),
    );
  }
}

