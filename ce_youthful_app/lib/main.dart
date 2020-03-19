import 'package:flutter/material.dart';

import './boxes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Christ Embassy Church'),
          ),
        ),
        body: Boxes(),
      ),
    );
  }
}
