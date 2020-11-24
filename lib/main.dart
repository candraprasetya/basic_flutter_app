//import package
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'screen/login_screen.dart';

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
      home: LoginScreen(),
    );
  }
}
