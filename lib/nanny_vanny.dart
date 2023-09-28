import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nanny_vanny/widgets/bottom_navigation_bar.dart';
import 'package:nanny_vanny/widgets/button_icon.dart';
import 'package:nanny_vanny/widgets/button_time.dart';
import 'package:nanny_vanny/widgets/drawer_widget.dart';

class NannyVanny extends StatefulWidget {
  const NannyVanny({super.key});

  @override
  State<NannyVanny> createState() => _NannyVannyState();
}

class _NannyVannyState extends State<NannyVanny> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  List<packages> package = [
    packages(Colors: true, iconcolor: true,
        price: '2799',
        packname: 'One Day Package'),
    packages(
        Colors: false,
        iconcolor: false,
        price: '7497',
        packname: 'Three Days Package'),
    packages(
        Colors: true,
        iconcolor: true,
        price: '11495',
        packname: 'Five Days Package'),
    packages(
        Colors: false,
        iconcolor: false,
        price: '7497',
        packname: 'Weekend Package'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  double? w;
  double? h;
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h= MediaQuery.of(context).size.width;


    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white54,
          leading: IconButton(
            icon: Icon(Icons.format_align_left_sharp, color: Colors.pinkAccent),
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
          ),
        ),
        drawer: drawer(),
        body: body(),
        bottomNavigationBar:  bottomBar()
    );
  }

  Widget buttonWidget(Icon icon, String text){
    return  SizedBox(
      height: 22,
      width: 80,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(38, 47, 113, 1),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(18.0))),
        child: Row(
          children: [
            Icon(Icons.mic_none, size: 8),
            Text('Survillence',
                style: TextStyle(fontSize: 8)),
          ],
        ),
      ),
    );
  }

  Widget body(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/image 2.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Welcome ',
                    style: TextStyle(
                                color: Color.fromRGBO(92, 92, 92, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                    children: const <TextSpan>[
                      TextSpan(text: '\nEmily Cyrus', style: TextStyle(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),

            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              height: 231,
              width: double.infinity,
              child: Stack(
                alignment: FractionalOffset.centerLeft,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    height: 155,
                    width: double.infinity,
                    child: Card(
                      color: Color.fromRGBO(245, 181, 207, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              child: Text(
                                'Nanny And\nBabysitting Services',
                                style: TextStyle(
                                    color: Color.fromRGBO(38, 47, 113, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              width: 90,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(38, 47, 113, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(18.0))),
                                  child: Text('Book Now',style: TextStyle(fontSize: 12),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: -8,
                      top: 0.5,
                      bottom: 6,
                      child: Image(
                        image: AssetImage(
                          'assets/Group 3749 (2).png',
                        ),
                      )),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 25, 10),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('Your Current Booking',
                      style: TextStyle(
                          color: Color.fromRGBO(38, 47, 113, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 8),
                  SizedBox(
                    height: 200,
                    width: 500,
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('One Day Package',
                                    style: TextStyle(
                                        color: Color.fromRGBO(227, 109, 166, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                                SizedBox(
                                  width: 70,
                                  height: 20,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Color.fromRGBO(227, 109, 166, 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(18.0))),
                                      child: Text('Start',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),)),
                                ),
                              ],
                            ),
                            buttonTime(),
                            buttonicon(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Packages', style: TextStyle(color: Color.fromRGBO(38, 47, 113, 1), fontSize: 20, fontWeight: FontWeight.w700)),
                  SizedBox(height: 10),
                  Wrap(
                      children: package.map((product) {
                        return getProductItem(product);
                      }).toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomBar(){

    return

      BottomNavigationBar(
        showUnselectedLabels: true,

        items:  <BottomNavigationBarItem>[

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
        currentIndex: _selectedIndex,unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(227, 109, 166, 1),
        onTap: _onItemTapped,
      );
  }
  Widget getProductItem(packages product) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        color: product.Colors
            ? Color.fromRGBO(245, 181, 207, 1)
            : Color.fromRGBO(128, 171, 219, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: SizedBox(
          height: 150,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month,
                        color: product.iconcolor
                            ? Color.fromRGBO(227, 109, 166, 1)
                            : Colors.white,
                        size: 40),
                    SizedBox(
                      height: 25,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: product.iconcolor
                                  ? Color.fromRGBO(227, 109, 166, 1)
                                  : Color.fromRGBO(0, 152, 208, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0))),
                          child: Text('Book Now',style: TextStyle(fontSize: 12),)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.packname,
                        style: TextStyle(
                            color: Color.fromRGBO(38, 47, 113, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                    Text('Rs. ${product.price}',
                        style: TextStyle(
                            color: Color.fromRGBO(38, 47, 113, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ],
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ',
                  style: TextStyle(
                      color: product.Colors ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 8.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class packages {
  String packname;
  bool Colors;
  bool iconcolor;
  String price;
  packages(
      {required this.Colors,
        required this.iconcolor,
        required this.price,
        required this.packname});
}
class Strings{
  String texted;
  Strings({required this.texted});
}
