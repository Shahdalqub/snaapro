import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:snaapro/layout/home_layout/home_layout.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/mudeuls/user/user_page.dart';

import '../../shared/combuninte/conbunente.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  bool isPasswordValid=true;
  bool isEmailValid = true;
  String gender='' ;
  String worlker='' ;
  String? valueChooseCity;



  String? valueChooseJob;
  Color c=Color.fromRGBO(240, 240, 240, 1);

  Color co=Color.fromRGBO(255,116,49,1);

  var scaffoldKey=GlobalKey<ScaffoldState>();

  var formKey=GlobalKey<FormState>();

  final  listCity=[
    "المدينة","طولكرم","الخليل","بيت لحم","جنين","قلقيلية","طوباس","رام الله","نابلس","القدس"
  ];

  final  listJob=[
    'نجار',"حداد","بناء","صيانة سيارات","طباخ"
  ];

  var emailCont=TextEditingController();

  var passCont=TextEditingController();

  var nameCont=TextEditingController();

  var dateController=TextEditingController();

  // var monthCount=TextEditingController();
  List<DropdownMenuItem<String>> createListCity(){

    return listCity.map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      ),
    ).toList();

  }

  List<DropdownMenuItem<String>> createListJob(){

    return listJob.map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      ),
    ).toList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
          key: scaffoldKey,

          appBar: AppBar(
            backgroundColor: Color.fromRGBO(251, 170, 58, 1),
            centerTitle: true,
            foregroundColor: Colors.black,
            title:Text(
              'انشاء حساب',
            ),
          ),
          body:
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image:AssetImage(
                            'images/Untitled-4.png'
                        ),
                        //width: 2400.0,
                        //height: 150.0,
                        //fit: BoxFit.fill,
                      ),

                      Row(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            width: 230.0,
                            child: TextFormField(
                              controller:nameCont,

                              onFieldSubmitted: (val){
                                print(val);
                              },
                              decoration: InputDecoration(
                                fillColor:Color.fromRGBO(225, 225, 225, 1),
                                filled: true,
                                // hintText: 'Email Address',
                                //labelText: 'الاسم',
                                prefixIcon: Icon(
                                  Icons.people,
                                ),
                                // border:OutlineInputBorder(),

                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name.';
                                }
                                return null;
                              },
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'الاسم',
                                style: TextStyle(
                                    color: co,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0

                                ),
                              ),
                            ),
                          )
                        ],
                      ),//name
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            width: 230.0,
                            child: TextFormField(
                              controller: emailCont,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (val){
                                if (!val.contains('@')) {
                                  isEmailValid = false;
                                } else {
                                 isEmailValid = true;
                                }
                               setState(() {
                                 isEmailValid = val.contains('@');
                               });
                              },

                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(225, 225, 225, 1),
                                filled: true,
                                // hintText: 'Email Address',
                                //labelText: 'الاسم',
                                prefixIcon: Icon(
                                  Icons.email,
                                ),
                                errorText: isEmailValid ? null : 'يجب أن يحتوي email على علامة @',
                                //border:OutlineInputBorder(),

                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email.';
                                }
                                return null;
                              },
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'البريد الالكتروني',
                                  style: TextStyle(
                                      color:co,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0

                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),//email
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.grey.shade200,
                            width: 230.0,
                            child: TextFormField(
                              controller: passCont,
                              onChanged: (val){
                                if (!(val.length > 10)) {
                                  isPasswordValid = false;
                                } else {
                                  isPasswordValid = true;
                                }
                               setState(() {
                                 isPasswordValid = val.length > 10;
                               });
                              },


                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                errorText: isPasswordValid ? null : 'يجب أن تكون أكثر من 10 أحرف',
                                fillColor: Color.fromRGBO(225, 225, 225, 1),
                                filled: true,
                                // hintText: 'Password',
                                // labelText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),


                                //  border:OutlineInputBorder(),

                              ),

                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              },
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'كلمة المرور',
                                style: TextStyle(
                                    color: co,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0

                                ),
                              ),
                            ),
                          )
                        ],
                      ),//password
                      SizedBox(
                        height: 20.0,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       color: c,
                      //       width: 100.0,
                      //       child: TextFormField(
                      //        controller: dayCount,
                      //         onFieldSubmitted: (val){
                      //           print(val);
                      //         },
                      //         keyboardType: TextInputType.number,
                      //         textAlign: TextAlign.center,
                      //         decoration: InputDecoration(
                      //           fillColor:c,
                      //           filled: true,
                      //           // hintText: 'اليوم',
                      //            labelText: 'اليوم',
                      //           labelStyle: TextStyle(
                      //             fontSize: 25.0,
                      //           ),
                      //
                      //           //border:OutlineInputBorder(),
                      //
                      //         ),
                      //         validator: (value) {
                      //           if (value!.isEmpty) {
                      //             return 'Please enter your password.';
                      //           }
                      //           return null;
                      //         },
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 20.0,
                      //     ),
                      //     Container(
                      //       color: c,
                      //       width: 100.0,
                      //       child: TextFormField(
                      //         controller: monthCount,
                      //         onFieldSubmitted: (val){
                      //           print(val);
                      //         },
                      //         keyboardType: TextInputType.number,
                      //         textAlign: TextAlign.center,
                      //         decoration: InputDecoration(
                      //           fillColor: c,
                      //           filled: true,
                      //           labelText: 'الشهر',
                      //           labelStyle: TextStyle(
                      //             fontSize: 25.0,
                      //           ),
                      //          // border:OutlineInputBorder(),
                      //
                      //         ),
                      //         validator: (value) {
                      //           if (value!.isEmpty) {
                      //             return 'Please enter your password.';
                      //           }
                      //           return null;
                      //         },
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 20.0,
                      //     ),
                      //     Container(
                      //       color: c,
                      //       width: 100.0,
                      //       child: TextFormField(
                      //         controller: yearCount,
                      //         onFieldSubmitted: (val){
                      //           print(val);
                      //         },
                      //         keyboardType: TextInputType.number,
                      //         textAlign: TextAlign.center,
                      //         decoration: InputDecoration(
                      //           fillColor:c,
                      //           filled: true,
                      //           labelText: 'السنة',
                      //           labelStyle: TextStyle(
                      //             fontSize: 25.0,
                      //           ),
                      //           //border:OutlineInputBorder(),
                      //
                      //         ),
                      //         validator: (value) {
                      //           if (value!.isEmpty) {
                      //             return 'Please enter your password.';
                      //           }
                      //           return null;
                      //         },
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Row(
                        children: [
                          defaultFormField(
                            controller: dateController,
                            type:TextInputType.datetime,
                            //isClickable: false,
                            onTap: (){
                              showDatePicker(
                                  context: context,
                                  initialDate:DateTime.now(),
                                  firstDate:DateTime.parse('1960-01-01')  ,
                                  lastDate:DateTime.now())
                                  .then(( value) {
                                print(DateFormat.yMMMd().format(value!));
                               dateController.text=DateFormat.yMMMd().format(value!);
                                //print(value.format(context));
                              });

                            },
                            validate: (String? value){
                              if((value!.isEmpty)){
                                return 'date must not be empty';
                              }
                              return null;
                            },
                            //label:'task date',
                            prefix: Icon(Icons.calendar_today),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'تاريخ الميلاد',
                                style: TextStyle(
                                    color:co,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0

                                ),
                              ),
                            ),
                          )
                        ],
                      ),//bearthday
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            color:c,
                            child: DropdownButton(
                              items:createListCity(),
                              hint: Text(
                                "المدينة",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),

                              dropdownColor:c,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.orange,
                              ),
                              iconSize: 50.0,

                              value: valueChooseCity,
                              onChanged: (String? value) {
                                setState(() {
                                  valueChooseCity = value ?? "";
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 150,
                            color: c,
                            child: DropdownButton(
                              items:createListJob(),
                              hint: Text(
                                "الوظيفة",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),

                              dropdownColor: Colors.grey.shade200,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.orange,
                              ),
                              iconSize: 50.0,

                              value:valueChooseJob,
                              onChanged: (String? value) {
                                valueChooseJob = value ?? "";
                              },
                            ),
                          ),
                        ],
                      ),//job &city
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            color: c,
                            child: RadioListTile(
                                title: Text('عامل'),
                                value: 'عامل',
                                groupValue: worlker,
                                onChanged:(value){
                                 setState(() {
                                   worlker=value.toString();
                                 });
                                }

                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 150,
                            color: c,
                            child: RadioListTile(
                                title: Text('صاحب عمل'),
                                value: 'صاحب عمل',
                                groupValue:  worlker,
                                onChanged:(value){
                                  setState(() {
                                    worlker=value.toString();
                                  });
                                }

                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            color: c,
                            child: RadioListTile(
                                title: Text('انثى'),
                                value: 'female',
                                groupValue:gender,
                                onChanged:(value){
                                  setState(() {
                                    gender=value.toString();
                                  });
                                }

                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 150,
                            color: c,
                            child: RadioListTile(
                                title: Text('ذكر'),
                                value: 'male',
                                groupValue: gender,
                                onChanged:(value){
                                  setState(() {
                                    gender=value.toString();
                                  });
                                }

                            ),
                          ),

                        ],
                      ),//gender
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(

                        child: Container(
                          color:co,
                          width: 170,
                          height: 50,
                          child: MaterialButton(

                              onPressed:() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeLayout(
                                      username:nameCont.text,
                                      job: valueChooseJob.toString(),
                                      city: valueChooseCity.toString(),),

                                  ),

                                );
                                if(formKey.currentState!.validate()){
                                  formKey.currentState!.save();}
                              },

                              child: Text('انشاء حساب',
                                style: TextStyle(
                                  fontSize: 25,

                                ),)),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ),
          ),
        );



  }
}
