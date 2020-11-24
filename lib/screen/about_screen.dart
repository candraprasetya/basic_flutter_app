import 'package:basic_flutter/widget/custom_button.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          text: 'Back to Home',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
