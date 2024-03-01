import 'package:flutter/material.dart';

class FlightInfoPage extends StatefulWidget {
  @override
  _FlightInfoPageState createState() => _FlightInfoPageState();
}

class _FlightInfoPageState extends State<FlightInfoPage> {
  int _passengerCount = 4;
  String _flightOption = 'Round Trip'; // Initialize flight option

  final TextEditingController _routeController =
  TextEditingController(text: 'New York (NYC) - Dhaka (DAC)');
  final TextEditingController _departureDateController =
  TextEditingController(text: 'Fri, Jan 14, 2023');
  final TextEditingController _returnDateController =
  TextEditingController(text: 'Fri, Jan 20, 2023');

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Flight Options',
              style: TextStyle(
                  fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 10, //Make it equal to height of radio button
                  width: 10,  //Make it equal to width of radio button
                  margin: EdgeInsets.only(right: 5),  //Apply margins and(or) paddings as per requirement
                  child: RadioListTile<String>(
                    title: const Text(
                      'Round Trip',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Round Trip',
                    groupValue: _flightOption,
                    onChanged: (value) {
                      setState(() {
                        _flightOption = value!;
                      });
                    },
                  ),
                ),
                RadioListTile<String>(
                  title: const Text(
                    'Round Trip',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  value: 'Round Trip',
                  groupValue: _flightOption,
                  onChanged: (value) {
                    setState(() {
                      _flightOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text(
                    'One Way',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  value: 'One Way',
                  groupValue: _flightOption,
                  onChanged: (value) {
                    setState(() {
                      _flightOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text(
                    'Multi City',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  value: 'Multi City',
                  groupValue: _flightOption,
                  onChanged: (value) {
                    setState(() {
                      _flightOption = value!;
                    });
                  },
                )
              ],
            ),
            TextField(
              controller: _routeController,
              decoration: InputDecoration(
                labelText: 'Route',
                labelStyle: TextStyle(
                    fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(
                        text: '$_passengerCount Passengers'),
                    decoration: InputDecoration(
                      labelText: 'Passengers',
                      labelStyle: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold),
                      suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    _passengerCount++;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    if (_passengerCount > 1) _passengerCount--;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ]),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w900,
                    ),
                    readOnly: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _departureDateController,
              decoration: InputDecoration(
                labelText: 'Departure Date',
                labelStyle: TextStyle(
                    fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _returnDateController,
              decoration: InputDecoration(
                labelText: 'Return Date',
                labelStyle: TextStyle(
                    fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }



}

