import 'package:flutter/material.dart';
import 'package:taibapp/pages/Event.dart';
import 'package:taibapp/pages/Home.dart';
import 'package:taibapp/pages/Place.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  AssetImage image = const AssetImage('images/logo.png');

  final List<Widget> _children = [
    const HomePage(),
    const PlacePage(),
    const EventPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.place),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.event),
            label: '',
          ),
        ],
      ),
      body: _children[currentPageIndex],
    );
  }
}
