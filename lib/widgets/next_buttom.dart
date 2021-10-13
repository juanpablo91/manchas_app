import 'package:flutter/material.dart';
import 'package:manchas_app/user/ui/screens/loginpage3.dart';



class NextButtom extends StatefulWidget{


  bool control=false;
  var text="";

  NextButtom({Key? key, required this.control,required this.text});

  @override
  State<NextButtom> createState() {
    // TODO: implement createState
    return StateNextButtom();
  }

}

class StateNextButtom extends State<NextButtom>{
  @override


  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 70,
        height: 65,
        decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Colors.amber
      ),

      child: InkWell(

        child: Icon(Icons.arrow_right_alt,
            color: Colors.white,
            size:50,
        ),

        onTap:widget.control?(){
          Navigator.of(context).push(MaterialPageRoute
            (builder: (context)=> LoginPage3()));
        }:(){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(widget.text),
              ));
        },


      ),


      );

  }

}