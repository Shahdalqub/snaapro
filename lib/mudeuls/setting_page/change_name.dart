import 'package:flutter/material.dart';

class Name extends StatelessWidget {
var oldname=TextEditingController();
var newname=TextEditingController();
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
            'تغيير الاسم',
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
      'الاسم الحالي',
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey
      ),)),
      SizedBox(
      height: 10.0,
      ),
      TextFormField(

      controller: oldname,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your old name.';
          }
          return null;
        },
      decoration: InputDecoration(
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
              'الاسم الجديد',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),)),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(

          controller: newname,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your new name.';
            }
            return null;
          },
          decoration: InputDecoration(
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
