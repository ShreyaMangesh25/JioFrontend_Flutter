
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<component> comp=[
  component(icon: Icon(Icons.star_border,size: 8), text: 'Rate Us'),
  component(icon: Icon(Icons.location_on_outlined,size: 8), text: 'Geolocation'),
  component(icon: Icon(Icons.mic_none,size: 8), text: 'Survillence'),
];

class component {
  Icon icon;
  String text;
  component({required this.icon,required this.text});
}

Widget buttonicon(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        height: 20,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(38, 47, 113, 1),
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(18.0))),
            child: Row(
              children: [
                comp[0].icon,
                Text(comp[0].text,
                    style: TextStyle(fontSize: 8)),
              ],
            )),
      ),
      SizedBox(
        height: 20,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(38, 47, 113, 1),
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(18.0))),
            child: Row(
              children: [
                comp[1].icon,
                Text(comp[1].text,
                    style: TextStyle(fontSize: 8)),
              ],
            )),
      ),
      SizedBox(
        height: 20,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(38, 47, 113, 1),
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(18.0))),
            child: Row(
              children: [
                comp[2].icon,
                Text(comp[2].text,
                    style: TextStyle(fontSize: 8)),
              ],
            )),
      ),
    ],
  );
}