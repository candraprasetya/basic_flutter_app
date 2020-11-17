//import package
import 'package:basic_flutter/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//main function
void main() {
  runApp(MyApp());
}

//Widget App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Flutter',
      home: HomeScreen(),
    );
  }
}
