import 'package:flutter/material.dart';

// screen for TTS settings
class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  void initState() {
    super.initState();
  }

  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C',
    'B',
    'C'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50.0, bottom: 20),
          child: Text(
            "Shopping List",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      color: Colors.amber,
                      child: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.amber,
                      child: Center(child: Text('Entry ${entries[index]}')),
                    ),
                  ],
                );
              }),
        ),
        const Padding(padding: EdgeInsets.all(10))
      ],
    ));
  }
}
