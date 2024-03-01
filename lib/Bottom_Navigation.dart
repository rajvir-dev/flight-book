import 'find_flight.dart';
import 'package:flutter/material.dart';
import 'Available_Flight.dart';
import 'home.dart';

class Bottom_navigationbar extends StatefulWidget {
  const Bottom_navigationbar({super.key});

  @override
  State<Bottom_navigationbar> createState() => _Bottom_navigationbarState();
}

class _Bottom_navigationbarState extends State<Bottom_navigationbar> {
  int myIndex = 0;

  List myList = [
    TravelScreen(),
    FlightInfoPage(),
    Flights(),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: Center(
            child: myList[myIndex],
          ),
          bottomNavigationBar: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              unselectedIconTheme:
                  IconThemeData(color: Color(hexColor('#a4a6aa')), size: 25),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
              onTap: (index) {
                setState(() {
                  myIndex = index;
                });
              },
              currentIndex: myIndex,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
              selectedIconTheme:
                  IconThemeData(color: Color(hexColor('#3c12b3')), size: 30),
              selectedItemColor: Color(hexColor('#3c12b3')),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_rounded,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.airplane_ticket_rounded), label: 'Ticket'),
              ],
            ),
          )),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
