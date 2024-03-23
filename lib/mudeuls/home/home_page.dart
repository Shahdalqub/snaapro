import 'package:flutter/material.dart';
import 'package:snaapro/shared/combuninte/conbunente.dart';

class HomePage extends StatelessWidget {
  
double sizeFont=30;
double hight=5;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      body:

      SingleChildScrollView(
        child: Column(
          children: [
                   Padding(
              padding: const EdgeInsets.only(
                  top: 20.0,),
              child: const Image(image: AssetImage('images/Untitled-7.png',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20.0),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text('الاكثر طلبا',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultJob(img: 'images/Untitled-8.png', jobName: 'اعمال الكهرباء'),
                  SizedBox(width: 10,),
                  defaultJob(img: 'images/Untitled-9.png', jobName: 'اعمال النجاره'),
                  SizedBox(width: 10,),
                  defaultJob(img: 'images/Untitled-10.png', jobName: 'اعمال السباكه'),
                  SizedBox(width: 10,),
                  defaultJob(img:'images/Untitled-12.png' , jobName: 'اعمال تنظيف'),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20.0),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text('الاعلى تقييما',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  highestRating(
                    img: 'images/Untitled-13.png',
                    name: 'راما موسى',
                    job_city: 'خياط_جنين',
              
                  ),
                  highestRating(
                      img: 'images/Untitled-14.png',
                    name: 'نور ناصر',
                    job_city: 'مرافق مريض_الخليل',
                  ),
                  highestRating(
                      img: 'images/Untitled-5.png',
                    name: 'سعد عبد الله',
                    job_city: 'نجار_طولكرم',
                  ),
              
              
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20.0),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text('تصنيفات اخرى',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultJob(img: 'images/Untitled-15.png', jobName: 'تنظيف جاف'),
                        SizedBox(width: 10,),
                        defaultJob(img: 'images/Untitled-16.png', jobName: 'اعمال خياطة'),
                        SizedBox(width: 10,),
                        defaultJob(img: 'images/Untitled-17.png', jobName: 'رعاية اطفال'),
                        SizedBox(width: 10,),
                        defaultJob(img:'images/Untitled-18.png' , jobName: 'مرافق مريض'),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                  horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultJob(img: 'images/Untitled-19.png', jobName: 'اعمال زراعة'),
                        SizedBox(width: 10,),
                        defaultJob(img: 'images/Untitled-20.png', jobName: 'اعمال بناء'),
                        SizedBox(width: 10,),
                        defaultJob(img: 'images/Untitled-21.png', jobName: 'اعمال حدادة'),
                        SizedBox(width: 10,),
                        defaultJob(img:'images/Untitled-22.png' , jobName: 'اعمال زجاج'),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             Stack(
               alignment: Alignment.centerRight,
                 children: [
                   const Image(image: AssetImage('images/Untitled-23.png',),),
                   Column(
                     children: [
                       SizedBox(
                         height: hight,
                       ),
                       Text('%10',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: sizeFont,
                         fontWeight: FontWeight.w900
                       ),),
                       SizedBox(
                         height: hight,
                       ),
                       Text('من الارباح',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: sizeFont,
                             fontWeight: FontWeight.w900
                         ),),
                       SizedBox(
                         height: 2*hight,
                       ),
                       Text('لدعم شعبنا',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: sizeFont,
                             fontWeight: FontWeight.w900
                         ),),
                       SizedBox(
                         height: hight,
                       ),
                       Text('في قطاع غزة',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: sizeFont,
                             fontWeight: FontWeight.w900
                         ),),
                       SizedBox(
                         height: hight,
                       ),
                     ],
                   ),
                 ], )

          ],
        ),
      )
      ,
    );
  }
}
