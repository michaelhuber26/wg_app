import 'package:flutter/material.dart';
import 'package:wg_app/theme/style.dart';
import 'package:wg_app/screens/startscreen/startscreen.dart';

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
      darkTheme: appTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
      },
    );
  }
}
