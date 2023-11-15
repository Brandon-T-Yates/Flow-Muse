import 'package:flutter/material.dart';
import 'package:tododemo/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackBlue,
      appBar: AppBar( 
        backgroundColor: appBackBlue,
        elevation: 0,
        title:  Row(
          children: [
            Spacer(), // Add Spacer to push the icon to the right
            Icon(
              Icons.menu,
              color: black,
              size: 30,
            ),
          ],
        ),
      ),
      body: Container(
        child: Text('This is the home screen.'),
      ),
    );
  }
}