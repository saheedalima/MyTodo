import 'package:flutter/material.dart';

class NoDataScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/todoHome.png"),
            SizedBox(height: 10,),
            Text("What do you want to do today",style: TextStyle(fontSize: 17,color: Colors.white)),
            SizedBox(height: 5,),
            Text("Tap + to add your task",style: TextStyle(fontSize: 10,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
