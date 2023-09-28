
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List item=[
  "Home",
  "Book A Nanny",
  "How It Works",
  "Why Nanny Vanny",
  "My Bookings",
  "My Profile",
  "Support",
];
Widget drawer(){
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Image.asset('assets/image 2.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Emily Cyrus',
                  style: TextStyle(
                      color: Color.fromRGBO(227, 109, 166, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder:(BuildContext context,int index) {
                return ListTile(
                  onTap: () {},
                  title: Text(item[index].toString(),style: TextStyle(
                      color: Color.fromRGBO(38, 47, 113, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
                );
              },
              separatorBuilder: (BuildContext context, index) => const Divider(color: Color.fromRGBO(227, 109, 166, 1)),
              itemCount: item.length),
        ],

      ),
    ),

  );
}