import 'package:flutter/material.dart';
import 'package:bca/BCAConverterScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.green,
        scaffoldBackgroundColor: Color(0xffeeeeee),
        primarySwatch: Colors.blue,
        canvasColor: Colors.red,
      ),
      home: BCAConverterScreen(),
    );
  }
}


