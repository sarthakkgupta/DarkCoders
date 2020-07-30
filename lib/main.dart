import 'package:flutter/material.dart';
import 'package:s/loginpage.dart';
import 'package:s/signuppage.dart';
import './tabscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       
      ),

        routes: {
        '/': (BuildContext context) => AuthPage(),
        '/home': (BuildContext context) => TabsScreen(),
        '/signup':  (BuildContext context) => SignUpPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
