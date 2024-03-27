import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  bool isEmailValid = true;

  bool isEmailValid2 = true;

  var oldemail=TextEditingController();

  var newemail=TextEditingController();

  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      appBar:  AppBar(
        backgroundColor: Color.fromRGBO(234, 234, 234, 1),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'تغيير البريد الالكتروني',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 50.0,
            start: 20.0,
            end: 20.0,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'البريد الالكتروني الحالي',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),)),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(

                  controller: oldemail,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your old email.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: isEmailValid ? null : 'يجب أن يحتوي email على علامة @',
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0), // تعيين حجم الحقل
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1.0// تعيين اللون المطلوب للحدود
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'البريد الالكتروني الجديد',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),)),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(

                  controller: newemail,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val){
                    if (!val.contains('@')) {
                      isEmailValid2 = false;
                    } else {
                      isEmailValid2 = true;
                    }
                    setState(() {
                      isEmailValid2 = val.contains('@');
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your new email.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: isEmailValid2 ? null : 'يجب أن يحتوي email على علامة @',
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0), // تعيين حجم الحقل
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1.0// تعيين اللون المطلوب للحدود
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  color: Color.fromRGBO(255,116,49,1),
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();}
                  },
                  child: Text(
                    'حفظ التغييرات',
                    style: TextStyle(
                      fontSize: 25,

                    ),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
