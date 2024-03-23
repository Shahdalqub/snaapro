
import 'package:flutter/material.dart';
double size=15;
Widget defaultJob({
  required String img,
  required String jobName,
})=>Container(
  width: 90.0,
  child: Column(

    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(
              img
            ),
          ),


        ],
      ),
      SizedBox(
        height:10.0 ,
      ),
      Text(
        jobName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);
Widget highestRating({
   required String img,
  required String name,
  required String job_city,
})=>Card(
  color: Colors.white,
  child: Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50.0,
          child:  Image(
              image: AssetImage(
              img
              ),
            //fit: BoxFit.cover,
          ),

        ),
        Text(name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        Text(job_city,
        style: TextStyle(
          fontSize: 11,
          color: Colors.grey
        ),),
        Row(
          children: [
            Icon(Icons.star,
            size:size,
            color: Colors.yellow,),
            Icon(Icons.star,
              size:size,
              color: Colors.yellow,),
            Icon(Icons.star,
              size:size,
              color: Colors.yellow,),
            Icon(Icons.star,
              size:size,
              color: Colors.yellow,),
            Icon(Icons.star,
              size:size,
              color: Colors.yellow,),
          ],
        ),

      ],
    ),
  ),
);
