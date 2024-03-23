import 'package:flutter/material.dart';
import 'package:snaapro/mudeuls/home/home_page.dart';
import 'package:snaapro/search_page.dart';
import 'package:snaapro/layout/setting_page/setting_page.dart';

class UserPage extends StatefulWidget {
  final String username;
  final String job;
  final String city;

  UserPage(  { required this.username, required this.job, required this.city});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  double size=30;
  List <bool> stareLight=[false,false ,false,false,false];



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
     backgroundColor: Color.fromRGBO(234, 234, 234, 1),
    body:SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              const Image(image: AssetImage('images/Untitled-6.png'),
              ),
              Positioned(
                top: 30.0,
                left: 150,
                child: Text('حساب شخصي',
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
                      'images/Untitled-5.png',
                    ),


                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: [
                          IconButton(
                              onPressed: (){},
                              icon:CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.deepPurpleAccent,
                                child: Icon(
                                  Icons.edit,
                                  size: 16.0,
                                  color: Colors.white,
                                ),
                              )
                          ),
                          IconButton(
                              onPressed: (){},
                              icon:CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.deepPurpleAccent,
                                child: Icon(
                                  Icons.message,
                                  size: 16.0,
                                  color: Colors.white,
                                ),
                              )
                          )

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${widget.username}',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              '${widget.job} -${widget.city}',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(


                              children: [
                                IconButton(

                                  onPressed: () {
                                    setState(() {
                                      stareLight[0] = !stareLight[0];
                                    });
                                  },

                                  icon: Icon(
                                    Icons.star,
                                    size:size,
                                    color:stareLight[0]? Colors.yellow:Colors.grey,),
                                ),
                                IconButton(

                                  onPressed: () {
                                    setState(() {
                                      stareLight[1]= !stareLight[1];
                                    });
                                  },
                                  icon: Icon(
                                    Icons.star,
                                    size:size,
                                    color:stareLight[1]? Colors.yellow:Colors.grey,),
                                ),
                                IconButton(

                                  onPressed: () {
                                    setState(() {
                                      stareLight[2]= !stareLight[2];
                                    });
                                  },
                                  icon: Icon(Icons.star,
                                    size:size,
                                    color:stareLight[2]? Colors.yellow:Colors.grey,),
                                ),
                                IconButton(

                                  onPressed: () {
                                    setState(() {
                                      stareLight[3]= !stareLight[3];
                                    });
                                  },
                                  icon: Icon(Icons.star,
                                    size:size,
                                    color:stareLight[3]? Colors.yellow:Colors.grey,),
                                ),
                                IconButton(

                                  onPressed: () {
                                    setState(() {
                                      stareLight[4]= !stareLight[4];
                                    });
                                  },
                                  icon: Icon(Icons.star,
                                    size:size,
                                    color:stareLight[4]? Colors.yellow:Colors.grey,),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text('نبذة مختصره',
                      style: TextStyle(
                        fontSize: 25,
                      ),)),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Card(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Container(
                        height: 150.0,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'نبذة مختصرة',


                          ),
                          maxLines: null,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: (){},
                            icon:CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.deepPurpleAccent,
                              child: Icon(
                                Icons.add,
                                size: 16.0,
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text('الاعمال',
                          style: TextStyle(
                            fontSize: 25,
                          ),),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),






        ],
      ),
    ),


    );
  }
}
