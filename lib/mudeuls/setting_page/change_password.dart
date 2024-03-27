import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
bool isPasswordValid=true;
bool isPasswordValid2=true;
  var oldpassword=TextEditingController();

  var newpassword=TextEditingController();

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
            'تغيير كلمة السر',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
        ),
      ),
      body:  SingleChildScrollView(
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
                      'كلمة السر الحالية',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),)),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(

                  controller: oldpassword,
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


                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your old password.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: isPasswordValid ? null : 'يجب أن تكون أكثر من 10 أحرف',
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
                      'كلمة السر الجديدة',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),)),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(

                  controller: newpassword,
                  onChanged: (val){
                    if (!(val.length > 10)) {
                      isPasswordValid2 = false;
                    } else {
                      isPasswordValid2 = true;
                    }
                    setState(() {
                      isPasswordValid2 = val.length > 10;
                    });
                  },


                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your new password.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorText: isPasswordValid2 ? null : 'يجب أن تكون أكثر من 10 أحرف',
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