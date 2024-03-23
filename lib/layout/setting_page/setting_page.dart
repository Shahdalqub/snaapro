import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {


  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return   Drawer(
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
      );


  }
}
