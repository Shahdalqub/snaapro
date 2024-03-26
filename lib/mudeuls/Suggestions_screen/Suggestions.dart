import 'package:flutter/material.dart';

class  Suggest_page extends StatelessWidget {
  var sug1=TextEditingController();
  var sug2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    title: Align(
      alignment: Alignment.center,
      child: Text('الاقتراحات',
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
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                  child: Text(
                    'موضوع الاقتراح',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),)),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(

              controller: sug1,
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
                  'تفاصيل الاقتراح',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),)),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: sug2,
                maxLines: null,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                     top: 10.0,
                  left: 10.0,
                  right: 10,
                  bottom: 200), // تعيين حجم الحقل
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.orange,
                    width: 100,
                    height: 50,
                    child: MaterialButton(
                      child: Text(
                        'إرسال',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,

                        ),
                      ),
                        onPressed: (){}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
