import 'package:flutter/material.dart';
import 'package:wg_app/theme/style.dart';
import 'package:wg_app/screens/mainscreen/mainscreen.dart';
import 'package:wg_app/screens/configscreen/configscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      darkTheme: darkAppTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/config': (context) => const ConfigScreen(),
      },
    );
  }
}
