import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentScr = 0;
  final List<Widget> screens = [
    Text('wallet'),
    Text('discovery'),
    Text('profile')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScr],
      bottomNavigationBar: HomeNavBar(),
    );
  }

  // Home Navigation Bar (HomeNavBar)
  BottomNavigationBar HomeNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentScr,
      onTap: (int index) => setState(() => currentScr = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_enhance),
          label: 'discovery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profile',
        ),
      ],
    );
  }
}
