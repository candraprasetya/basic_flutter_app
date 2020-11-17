import 'package:flutter/material.dart';

//Widget Screen
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text('Basic Flutter App'),
      ),
      //Body
      body: Container(
        width: sizeWidth,
        height: sizeHeight,
        color: Colors.teal,
        child: Column(
          children: [
            //Container warna Kuning
            Container(
              width: sizeWidth,
              color: Colors.yellow,
              child: Column(
                //vertikal krena column
                children: [
                  Text('Basic Text'),
                  Text(
                    'Basic Text With Style',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    'Basic Text With Style Bold',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Container warna lime
            Container(
              width: sizeWidth,
              color: Colors.lime,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.blue,
                    width: sizeWidth * 0.2,
                    height: sizeWidth * 0.2,
                  ),
                  Container(
                    color: Colors.red,
                    width: sizeWidth * 0.2,
                    height: sizeWidth * 0.2,
                  ),
                  Container(
                    color: Colors.green,
                    width: sizeWidth * 0.2,
                    height: sizeWidth * 0.2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
