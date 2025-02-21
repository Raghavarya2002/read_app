import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: _fontSize),
                  maxLines: null,
                ),
              ),
              Slider(
                value: _fontSize,
                min: 10,
                max: 100,
                onChanged: (newSize) {
                  setState(() {
                    _fontSize = newSize;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
