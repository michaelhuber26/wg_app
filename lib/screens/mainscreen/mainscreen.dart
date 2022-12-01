import 'package:flutter/material.dart';
import 'package:wg_app/screens/configscreen/configscreen.dart';

// screen for login (no password is checkt, iput doesnt matter)
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navindex = 1;

  final screens = [
    const ConfigScreen(),
    const Center(child: Text('Shopping')),
    const Center(child: Text('Money'))
  ];
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
            height: 60,
            selectedIndex: navindex,
            onDestinationSelected: (index) {
              setState(() {
                navindex = index;
                controller.jumpToPage(navindex);
              });
            },
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings),
                  label: 'Settings'),
              NavigationDestination(
                  icon: Icon(Icons.shopping_basket_outlined),
                  selectedIcon: Icon(Icons.shopping_basket),
                  label: 'Shopping'),
              NavigationDestination(
                  icon: Icon(Icons.money_off),
                  selectedIcon: Icon(Icons.attach_money_outlined),
                  label: 'Money'),
            ]),
      ),
      body: PageView(
        controller: controller,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            navindex = index;
          });
        },
      ),
    );
  }
}
