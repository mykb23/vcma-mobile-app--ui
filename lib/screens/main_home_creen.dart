import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vcmapp/screens/card_screen.dart';
import 'package:vcmapp/screens/dashboard_screen.dart';
import 'package:vcmapp/screens/my_cards_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _options = [
    DashboardScreen(),
    MyCardsScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _options.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(0, 116, 229, 1),
        unselectedItemColor: Color.fromRGBO(8, 26, 43, 1),
        selectedLabelStyle: TextStyle(fontSize: 10.0),
        unselectedLabelStyle: TextStyle(fontSize: 10.0),
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.creditCard),
            label: "My Cards",
          ),
        ],
      ),
    );
  }
}
