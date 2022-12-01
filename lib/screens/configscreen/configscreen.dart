import 'package:flutter/material.dart';

// screen for TTS settings
class ConfigScreen extends StatefulWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                child: Text(
                  "Einstellungen",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                indent: 16,
                endIndent: 16,
                color: Colors.grey[300],
                thickness: 5,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 6, 3, 34)),
                onPressed: () {},
                child: const Text(
                  'Speichern',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
