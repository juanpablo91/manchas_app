import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manchas_app/user/ui/widgets/avatar.dart';
import 'package:manchas_app/widgets/next_buttom.dart';

//vista principal LoginPage2
class LoginPage2 extends StatefulWidget{

  static String id="Login_page2";

  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() {
    return stateLoginPage2();
  }

}

class stateLoginPage2 extends State<LoginPage2> {

  final image = 'assets/5.png';

  bool control = false;

  final color=Colors.yellow[900];

  //variables eleccion
  bool border_cat = false;
  bool border_dog = false;
  bool border_other = false;

  void election(){

    if(border_cat | border_dog | border_other){
      control=true;
    }else{control=false;}
  }


  @override
  Widget build(BuildContext context) {

    //pet selector
    var pet_cat=Center(
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color:  border_cat?Colors.red:Colors.white,
                width: border_cat?5:0.0,
              ),
            ),

            child: InkWell(
              onTap: (){

                setState(() {
                  border_cat=!border_cat;
                  election();
                });
              },

            ),
          ),

          const SizedBox(height: 6,),

          Text(
            "Gato",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          )
        ],
      ),
    );

    var pet_dog=Center(
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color:  border_dog?Colors.red:Colors.white,
                width: border_dog?5:0,
              ),
            ),

            child: InkWell(
              onTap: (){
                setState(() {
                  border_dog=!border_dog;
                  election();
                });
              },

            ),
          ),

          const SizedBox(height: 6,),
          Text(
            "Perro",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),

        ],
      ),
    );

    var pet_other=Center(
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color:  border_other?Colors.amber:Colors.white,
                width: border_other?5:0,
              ),
            ),

            child: InkWell(
              onTap: (){
                setState(() {
                  border_other=!border_other;
                  election();
                });
              },

            ),
          ),

          const SizedBox(height: 6,),
          Text(
            "otro",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),

        ],
      ),
    );

    var pet_selector=Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child:Center(
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                pet_cat,
                pet_dog,
                pet_other,
              ],
            ),
      ),
    );

    //text
    var pet_SelectorText=Text(
      "¿Que mascota tienes?",
      style: GoogleFonts.montserrat(
        fontSize: 20,
        color: Colors.yellow[900],
        fontWeight: FontWeight.w600,
      ),

    );

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [

                  //logo_small(),

                  const SizedBox(height: 30,),

                  Avatar(),

                  const SizedBox(height: 40,),

                  pet_SelectorText,

                  const SizedBox(height: 20,),

                  pet_selector,


                  NextButtom(control:control,text: "ingrese el nombre o la mascota",)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}








