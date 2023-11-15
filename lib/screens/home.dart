import 'package:flutter/material.dart';
import 'package:tododemo/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackBlue,
      appBar: _buldAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: black,
                    size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 20, 
                      minWidth: 25
                    ),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: grey
                    ),
                ),
              ),
            )
          ]),
      ),
    );
  }

  AppBar _buldAppBar() {
    return AppBar(  
      backgroundColor: appBackBlue,
      elevation: 0,
      title:  const Row(
        children: [
          Spacer(), // Add Spacer to push the icon to the right
          Icon(
            Icons.menu,
            color: black,
            size: 30,
          ),
        ],
      ),
    );
  }
}