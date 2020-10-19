import 'package:flutter/material.dart';
import 'package:claybotanicals/components/GridProduct.dart';
import '../components/ImageBanner.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../components/CurveBackground.dart';
import '../util/hex_color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    Text(
      'Search',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    Text(
      'Add',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    Text(
      'Profile',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    Text(
      'Setting',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
  ];

//selection
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: CurvePainter(),
        child: CustomScrollView(
          primary: true,
          slivers: <Widget>[
            ImageBanner(),
            Products(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
       color: HexColor('bdc1b6'),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.orangeAccent,
        key: _bottomNavigationKey,
        index: 0,
        height: 50,
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(
            Icons.person_rounded,
            size: 30,
          ),
          Icon(
            Icons.settings,
            size: 30,
          )
        ],
        onTap: _onItemSelected,
      ),
    );
  }
}
