import 'package:flutter/material.dart';
import 'package:wg_app/screens/configscreen/configscreen.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:wg_app/screens/shoppingscreen/shoppingscreen.dart';

// screen for login (no password is checkt, iput doesnt matter)
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navindex = 0;

  final screens = [
    const Center(child: Text('Home')),
    const ShoppingScreen(),
    const Center(child: Text('Money')),
    const ConfigScreen(),
  ];
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomNavigationBar(
          isFloating: true,
          elevation: 2,
          iconSize: 35,
          borderRadius: const Radius.circular(30),
          selectedColor: Colors.orange,
          unSelectedColor: const Color.fromARGB(255, 129, 129, 129),
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          strokeColor: Colors.orange,
          items: [
            CustomNavigationBarItem(icon: const Icon(Icons.home_outlined)),
            CustomNavigationBarItem(
                icon: const Icon(Icons.shopping_basket_outlined)),
            CustomNavigationBarItem(
                icon: const Icon(Icons.attach_money_outlined)),
            CustomNavigationBarItem(icon: const Icon(Icons.settings)),
          ],
          onTap: (i) {
            setState(() {
              navindex = i;
            });
            controller.jumpToPage(navindex);
          },
          currentIndex: navindex,
        ),
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
