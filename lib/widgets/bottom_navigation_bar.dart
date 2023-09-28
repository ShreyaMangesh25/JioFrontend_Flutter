


import 'package:flutter/material.dart';

Widget bottomBar(onTap){
  int _selectedIndex=0;
  return

    BottomNavigationBar(
      elevation: 2,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.percent),
          label: 'Packages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Bookings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    );
}
