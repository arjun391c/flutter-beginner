import 'package:fclearn/pages/home_page.dart';
import 'package:fclearn/pages/home_page_with_sb.dart';
import 'package:fclearn/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

//to remove hot restart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Constants.prefs.getBool("loggedIn") == true
            ? HomePageSB()
            : LoginPage(),
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        routes: {
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePageSB(),
        });
  }
}
