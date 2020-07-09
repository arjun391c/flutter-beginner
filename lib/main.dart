import 'package:fclearn/pages/home_page.dart';
import 'package:fclearn/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//to remove hot restart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
