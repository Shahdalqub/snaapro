import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  Color c=Color.fromRGBO(240, 240, 240, 1);
  String worlker1 ='' ;
  String? valueChooseCity;
  final  listCity=[
    "المدينة","طولكرم","الخليل","بيت لحم","جنين","قلقيلية","طوباس","رام الله","نابلس","القدس"
  ];
  List<DropdownMenuItem<String>> _createListCity(){
    return listCity.map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
        value: e,
           child: Text(e),
      ),
    ).toList();
  }
  String? valueChooseJob;
  final  listJob=[
    'نجار',"حداد","بناء","صيانة سيارات","طباخ"
  ];
  List<DropdownMenuItem<String>> _createListJob(){
    return listJob.map<DropdownMenuItem<String>>(
          (e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      ),
    ).toList();
  }

  //String? job ;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Row(

              children: [

                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      start: 16.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6.0,
                      ),
                    ),
                  ),
                ),


                // Container(
                //   height: 46.0,
                //   width: 46.0,
                //   child: Icon(
                //     Icons.more_vert_outlined,
                //   ),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(
                //       6.0,
                //     ),
                //   ),
                // )
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 120,
                        color:c,
                        child: DropdownButton(
                          items:_createListCity(),
                          hint: Text(
                            "المدينة",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          dropdownColor:c,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.orange,
                          ),
                          iconSize: 30.0,
                  
                          value: valueChooseCity,
                          onChanged: (String? value) => setState(() {
                            valueChooseCity = value ?? "";
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(

                        width: 120,
                        color: c,
                        child: DropdownButton(
                          items:_createListJob(),
                          hint: Text(
                            "الوظيفة",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          dropdownColor:c,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.orange,
                          ),
                          iconSize: 30.0,
                          value: valueChooseJob,
                          onChanged: (String? value) => setState(() {
                            valueChooseJob = value ?? "";
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),//job &city
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  color: c,
                  child: RadioListTile(
                      title: Text('عامل'),
                      value: 'عامل',
                      groupValue: worlker1,
                      onChanged:(value){setState(() {
                        worlker1=value.toString();
                      });}

                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 170,
                  color: c,
                  child: RadioListTile(
                      title: Text('صاحب عمل'),
                      value: 'صاحب عمل',
                      groupValue: worlker1,
                      onChanged:(value){setState(() {
                        worlker1=value.toString();
                      });}

                  ),
                ),

              ],
            ),//worker
          ],
        )

      ),
      // drawer: Drawer(
      //   backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      //   elevation: 18.0,
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 100.0,
      //       ),
      //     Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 200,
      //         color:c,
      //         child: DropdownButton(
      //           items:_createListCity(),
      //           hint: Text(
      //             "المدينة",
      //             style: TextStyle(
      //               fontSize: 25,
      //             ),
      //           ),
      //           dropdownColor:c,
      //           icon: Icon(
      //             Icons.arrow_drop_down,
      //             color: Colors.orange,
      //           ),
      //           iconSize: 50.0,
      //
      //           value: valueChooseCity,
      //           onChanged: (String? value) => setState(() {
      //             valueChooseCity = value ?? "";
      //           }),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20.0,
      //       ),
      //       Container(
      //         width: 200,
      //         color: c,
      //         child: DropdownButton(
      //           items:_createListJob(),
      //           hint: Text(
      //             "الوظيفة",
      //             style: TextStyle(
      //               fontSize: 25,
      //             ),
      //           ),
      //
      //           dropdownColor: Colors.grey.shade200,
      //           icon: Icon(
      //             Icons.arrow_drop_down,
      //             color: Colors.orange,
      //           ),
      //           iconSize: 50.0,
      //
      //           value: valueChooseJob,
      //           onChanged: (String? value) => setState(() {
      //             valueChooseJob = value ?? "";
      //           }),
      //         ),
      //       ),
      //     ],
      //   ),//job &city
      //   SizedBox(
      //     height: 20.0,
      //   ),
      //   Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text('عامل',
      //           style: TextStyle(
      //             fontSize: 20.0,
      //           ),),
      //           Checkbox(
      //             value: _isChecked,
      //             onChanged: (bool? value) {
      //               setState(() {
      //                 _isChecked = value!;
      //               });
      //             },
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [
      //           Text('صاحب عمل',
      //             style: TextStyle(
      //               fontSize: 20.0,
      //             ),),
      //           Checkbox(
      //             value: _isChecked2,
      //             onChanged: (bool? value) {
      //               setState(() {
      //                 _isChecked2 = value!;
      //               });
      //             },
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //     ],
      //   ),
      // ),
    );
  }
}
