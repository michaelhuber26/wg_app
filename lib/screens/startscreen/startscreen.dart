import 'package:flutter/material.dart';

// screen for login (no password is checkt, iput doesnt matter)
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'START',
          style: TextStyle(
              fontSize: 56,
              color: Color.fromARGB(255, 34, 72, 199),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
