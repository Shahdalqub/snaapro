import 'package:flutter/material.dart';

import '../../shared/combuninte/conbunente.dart';

class  AdminPge extends StatefulWidget {


  @override
  State<AdminPge> createState() => _AdminPgeState();
}

class _AdminPgeState extends State<AdminPge> {
  double size=30;
  var formKey=GlobalKey<FormState>();
  var formKey2=GlobalKey<FormState>();
var city=TextEditingController();
var job=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage('images/Untitled-6.png'),
                ),
                Positioned(
                  top: 30.0,
                  left: 150,
                  child: Text('المسؤول',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Positioned(
                  top: 100,
                  left: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'images/Untitled-24.png',
                      ),
        
        
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 40.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('images/Untitled-26.png',),
                     width: 200,
                      height: 200,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'تسنيم حسان',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'مبرمج',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),),
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'اضافة مدينة',
                        style: TextStyle(
                            color:Color.fromRGBO(255,116,49,1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      IconButton(onPressed:(){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();}
                      }, icon:Icon(Icons.add)),
                      defaultFormField(
                        controller: city,
                        type:TextInputType.text,
                        validate: (String? value){
                          if((value!.isEmpty)){
                            return 'city must not be empty';
                          }
                          return null;
                        },

                        prefix: Icon(Icons.location_city),
                      ),

                    ],),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Form(
                key: formKey2,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'اضافة مهنة',
                        style: TextStyle(
                            color:Color.fromRGBO(255,116,49,1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed:(){
                          if(formKey2.currentState!.validate()){
                            formKey2.currentState!.save();}
                        }, icon:Icon(Icons.add)),
                        defaultFormField(
                          controller: job,
                          type:TextInputType.text,
                          validate: (String? value){
                            if((value!.isEmpty)){
                              return 'job must not be empty';
                            }
                            return null;
                          },

                          prefix: Icon(Icons.work),
                        ),

                      ],),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'الاقتراحات',
                  style: TextStyle(
                      color:Color.fromRGBO(255,116,49,1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
