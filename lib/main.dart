import 'package:flutter/material.dart';
import 'package:navigate_space/src/page/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      initialRoute: 'Home',
      routes: {
        'Home' : (BuildContext context) => HomePage(),
      },
    );
  }
}