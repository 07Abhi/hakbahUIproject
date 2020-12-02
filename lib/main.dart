import 'package:flutter/material.dart';
import 'pages/finalpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.cyan.shade700,
        fontFamily: "Ubuntu",
      ),
      home: FinalPage(),
    );
  }
}
