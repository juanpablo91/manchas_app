import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNavigate extends StatefulWidget{

  var text="";
  var  route='Login_page2';
  var color=Colors.yellow[900];
  var color2=Colors.white;
  double w=35;
  double h=5;

  ButtonNavigate( {Key? key, required this.route,required this.text,this.color,required this.color2,required
  this.h,required this.w});

  @override
  State<ButtonNavigate> createState() {
    // TODO: implement createState
    return StateButtonNavigate();
  }

}

class StateButtonNavigate extends State<ButtonNavigate>{
  @override


  Widget build(BuildContext context) {
    // TODO: implement build
    return
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding:  EdgeInsets.symmetric(
            horizontal: widget.w,
            vertical: widget.h,
          ),
            primary: widget.color,
          shadowColor: Colors.green,
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          textStyle: const TextStyle(fontSize: 5),
        ),
        onPressed: () {
          Navigator.pushNamed(context,widget.route);
        },
        child:  Text(widget.text,
          style: GoogleFonts.montserrat(
            fontSize: 32,
            color: widget.color2,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  }

}