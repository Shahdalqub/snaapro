import 'package:flutter/material.dart';
import 'package:snaapro/mudeuls/setting_page/Suggestions.dart';

import 'package:snaapro/mudeuls/setting_page/active_pointer.dart';
import 'package:snaapro/mudeuls/setting_page/change%20_photo.dart';
import 'package:snaapro/mudeuls/setting_page/change_email.dart';
import 'package:snaapro/mudeuls/setting_page/change_name.dart';
import 'package:snaapro/mudeuls/setting_page/change_password.dart';

class SettingPage extends StatefulWidget {


  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _switchValue = false;

  void _onSwitchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }
  Color color=Colors.grey.shade50;
  bool name=false;
  bool email=false;
  bool password=false;
  bool photo=false;
  bool suggest=false;
  bool active=false;
  bool logout=false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromRGBO(234, 234, 234, 1),

       body:SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
               SizedBox(
                 height: 50.0,
               ),
                Align(
                 alignment: Alignment.center,
                 child: Text(
                   'الاعدادات',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20.0,
                   ),),
               ),
               SizedBox(
                 height: 50.0,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(
                     child: SwitchListTile(
                         title: const Text(''),
                         value: _switchValue,
                         onChanged: _onSwitchChanged,
                         activeColor: Colors.green,
                         activeTrackColor: Colors.green.shade200,
                         inactiveTrackColor: Colors.grey[300],
                         contentPadding: const EdgeInsets.only(
                             right: 80.0
                         )

                       //secondary: const Icon(Icons.power_settings_new),
                     ),
                   ),
                   Expanded(
                     child: Align(
                         alignment: Alignment.centerRight,
                         child: Text('حالة التفرغ',
                           style: TextStyle(
                             //fontWeight: FontWeight.bold,
                             fontSize: 20.0,
                           ),)),
                   ),

                 ],),
               //active pointer
               SizedBox(
                 height: 10.0,
               ),
               const Divider(thickness: 2),
               MaterialButton(
                 color:color,
                   onPressed:(){
                     setState(() {
                       name=true;
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Name()));
                     });
                   },
               child: Align(
                 alignment: Alignment.centerRight,
                   child: Text('تغيير الاسم',
                     style: TextStyle(
                       //fontWeight: FontWeight.bold,
                       fontSize: 20.0,
                     ),)),),//name
               SizedBox(
                 height: 10.0,
               ),
               MaterialButton(
                 color: color,
                 onPressed:(){
                   setState(() {
                     email=true;
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Email()));
                   });
                 },
                 child: Align(
                     alignment: Alignment.centerRight,
                     child: Text('تغيير البريد الالكتروني',
                       style: TextStyle(
                         //fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),)),),//email
               SizedBox(
                 height: 10.0,
               ),
               MaterialButton(
                 color: color,
                 onPressed:(){
                   setState(() {
                     password=true;
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Password()));
                   });
                 },
                 child: Align(
                     alignment: Alignment.centerRight,
                     child: Text('تغيير كلمة المرور',
                       style: TextStyle(
                        // fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),)),),//pass
               SizedBox(
                 height: 10.0,
               ),
               MaterialButton(
                 color: color,
                 onPressed:(){
                   setState(() {
                     photo=true;
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Photo()));
                   });
                 },
                 child: Align(
                     alignment: Alignment.centerRight,
                     child: Text('تغيير الصورة الشخصية',
                       style: TextStyle(
                       //  fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),)),),//photo
               SizedBox(
                 height: 10.0,
               ),
               MaterialButton(
                 color: color,
                 onPressed:(){
                   setState(() {
                     suggest=true;
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Suggest_page()));
                   });
                 },
                 child: Align(
                     alignment: Alignment.centerRight,
                     child: Text('الاقتراحات',
                       style: TextStyle(
                        // fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),)),),//suggest

               SizedBox(
                 height: 10.0,
               ),
               MaterialButton(
                 color: color,
                 onPressed:(){

                 },
                 child: Align(
                     alignment: Alignment.centerRight,
                     child: Text('تسجيل الخروج',
                       style: TextStyle(
                        // fontWeight: FontWeight.bold,
                         fontSize: 20.0,
                       ),)),),//logout
               SizedBox(
                 height: 10.0,
               ),

             ],
           ),
         ),
       ) ,
     );
//     Drawer(
//         width: 200,
// backgroundColor: Colors.grey.shade300,
//
//         child: ListView(
//           children: [
//             Container(
//               height: 150.0,
//               child: DrawerHeader(
//
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         child: Icon(Icons.settings,
//                           color: Colors.grey,
//                         size: 50,),
//                       ),
//                       Expanded(
//                         child: Align(
//                           alignment: Alignment.topCenter,
//                           child: Text('الاعدادات',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),),
//                         ),
//                       ),
//                     ],
//               )
//                       ),
//             ),
//             ListTile(
//               onTap: (){},
//                 title: Container(
//                decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                border: Border.all(
//                  color: Colors.grey,
//                 width: 2.0,
//                    ),
//                   ),
//
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('حالة التفرغ',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.grey,
//                       ),),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: (){},
//               title: Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('الاقتراحات',
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.grey,
//                         ),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               onTap: (){},
//               title: Container(
//                 decoration: BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 2.0,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('تسجيل الخروج',
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Colors.grey,
//                         ),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );


  }
}
