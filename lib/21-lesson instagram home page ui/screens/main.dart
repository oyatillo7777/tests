import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tests/21-lesson%20instagram%20home%20page%20ui/screens/add.dart';
import 'package:tests/21-lesson%20instagram%20home%20page%20ui/screens/preofile.dart';
import 'package:tests/21-lesson%20instagram%20home%20page%20ui/screens/reels.dart';
import 'package:tests/21-lesson%20instagram%20home%20page%20ui/screens/screen.dart';
import 'package:tests/21-lesson%20instagram%20home%20page%20ui/screens/second_screen.dart';

class TwentyTwoth extends StatefulWidget {
  const TwentyTwoth({super.key});

  @override
  State<TwentyTwoth> createState() => _TwentyTwothState();
}

class _TwentyTwothState extends State<TwentyTwoth> {
  int _selectedIndex = 3;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const TwentyTwothScreen(),
    const Sinov(),
    const TweTyTwoThAdd(),
    const TwentyTwothReels(),
    const TwentyTwothProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye, size: 30),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
