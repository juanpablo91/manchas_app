import 'package:flutter/material.dart';

//logo pequeño esquina
class Logo_Small extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset("assets/1.png"),
    );
  }
}