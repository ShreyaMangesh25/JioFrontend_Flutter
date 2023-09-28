
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<element>comp=[
  element(text: 'From', date: ' 12.08.2020', time: ' 11 pm'),
  element(text: 'To', date: ' 13.08.2020', time: '07 am')
];

Widget buttonTime(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(comp[0].text,style: TextStyle(fontSize: 12),),
          Row(
            children: [
              Icon(Icons.calendar_month,
                  size: 14,
                  color: Color.fromRGBO(227, 109, 166, 1)),
              Text(comp[0].date,style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_time_outlined,
                  size: 14,
                  color: Color.fromRGBO(227, 109, 166, 1)),
              Text(comp[0].time,style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
     Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(comp[1].text,style: TextStyle(fontSize: 12),),
          Row(
            children: [
              Icon(Icons.calendar_month,
                  size: 14,
                  color: Color.fromRGBO(227, 109, 166, 1)),
              Text(comp[1].date,style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_time_outlined,
                  size: 14,
                  color: Color.fromRGBO(227, 109, 166, 1)),
              Text(comp[1].time,style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    ],
  );
}
class element{
  String time;
  String date;
  String text;
  element({required this.text,required this.date,required this.time});
}
