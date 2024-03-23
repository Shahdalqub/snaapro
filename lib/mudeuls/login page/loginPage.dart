import 'package:flutter/material.dart';

import '../../layout/home_layout/home_layout.dart';

String? email;
String? Password;

class loginPage extends StatefulWidget{
  const loginPage ({super.key});
  _loginPage  createState() => _loginPage ();

}
class _loginPage  extends State<loginPage > {
  String? userType;
  bool colstate1 = false;
  bool colstate2 = false;
  Color c=Color.fromRGBO(255,116,49,1);
  Color cb=Color.fromRGBO(240, 240, 240, 1);
  GlobalKey<FormState> login=GlobalKey();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              backgroundColor: Color.fromRGBO(234, 234, 234, 1),
              appBar: AppBar(
                title: const Center(child: Text(
                  "تسجيل الدخول",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 25,
                    fontFamily:"coconnextarabic"

                ),)),
                backgroundColor: Color.fromRGBO(251, 170, 58, 1),
              ),
              body: SingleChildScrollView(
                 child:Center(
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 70,
                      ),
                      RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.deepOrangeAccent,
                          value: "مستخدم",
                          title: const Text("مستخدم", style: TextStyle(
                              fontSize: 18,
                              fontFamily:"coconnextarabic"
                          ),),
                          groupValue: userType,
                          onChanged: (val) {
                            setState(() {
                              userType = val;
                            });
                          }) ,
                      RadioListTile(

                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.deepOrangeAccent,
                          value: "ادمن",
                          title: const Text("ادمن", style: TextStyle(
                              fontSize: 18,
                              fontFamily:"coconnextarabic"
                          ),),
                          groupValue: userType,
                          onChanged: (val) {
                            setState(() {
                              userType = val;
                            });
                          }),
                      Container(
                        child: Form(
                          key:login,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0),
                            child: Column(
                                children: [

                                  Row(
                                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'البريد الالكتروني:',
                                            style: TextStyle(fontSize: 19,
                                                color: c,
                                                fontFamily:"coconnextarabic"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 250.0,
                                        child: TextFormField(
                                          onSaved: (val){
                                            email=val;
                                          },
                                          validator: (value){
                                            if(value!.isEmpty) {return "الحقل فارغ";}
                                            if (!(value!.contains("@"))){
                                              return "يجب ان يحتوي على @";
                                            }
                                            else {return null;}

                                          },
                                          //maxLength: 50,
                                          decoration: InputDecoration(
                                            fillColor: cb,
                                            filled: true,
                                            //labelText: 'البريد الالكتروني ',
                                            // border: OutlineInputBorder()
                                          ),
                                        ),
                                      ),



                                      // Adjust this value to align the text vertically

                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(

                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'كلمة المرور:',
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: c,
                                                fontFamily:"coconnextarabic"),
                                          ),
                                        ),
                                      ),
                                     //TextFormField(),
                                      Container(
                                        width: 250,
                                        child: TextFormField(
                                        onSaved: (val){
                                          Password=val;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){ return "الحقل فارغ";}

                                          else {return null;}
                                        },
                                        //maxLength: 50,
                                        decoration: InputDecoration(
                                            fillColor: cb,
                                            filled: true,
                                          //labelText: 'البريد الالكتروني ',
                                           // border: OutlineInputBorder()
                                        ),
                                                                              ),
                                      ),
                                      // Adjust this value to align the text vertically

                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ]),
                          )
                      ),),


                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeLayout(username:'', job: '', city: '' ,)));
                          setState(() {
                            colstate1 = true;
                          });
                         if(login.currentState!.validate()){
                           login.currentState!.save();
                          //في هذا المكان سيتم كتابة كود ربط مع الداتا بيس لفحص اذا الايميل وكلمة السر صحيحات محفوظات في متفير email&Password
                         }
                         else{
                           print("not ");
                         }
                        },
                        child: const Text("تسجيل الدخول", style: TextStyle(
                            fontSize: 28,
                            fontFamily: "CoconAE Next Arabic"
                        ),),
                        color: colstate1
                            ? c
                            : cb,
                        textColor: Colors.black,

                        minWidth: 250,
                        height: 40,

                      ),
                      Container(
                          width: 300,
                          height: 300,
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "images/Untitled-3.png",
                            height: 300,
                            width: 300,
                            alignment: Alignment.bottomRight,)),

                    ],

                  )
              ),)
        )));
  }
}