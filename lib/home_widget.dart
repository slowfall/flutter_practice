import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIdex = 0;
  final List<Widget> _chidren = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('My Flutter App'),
      ),
      body:  _chidren[_currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        onTap:  onTabTapped,
        currentIndex: _currentIdex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.mail),
                title: new Text('Messages')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('Profile')
            ),
          ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIdex = index;
    });
  }
}