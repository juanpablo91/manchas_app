import 'package:flutter/material.dart';


class LoginPage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateLoginPage3();
  }
  
}

 class StateLoginPage3 extends State<LoginPage3>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
        Colors.yellow.shade600,
        Colors.yellow.shade900,
          Colors.pink
        ],
    )
    ),
      ),
      ),
    );
  }
  
 }