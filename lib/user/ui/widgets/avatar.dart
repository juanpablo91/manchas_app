import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//avatar (imagen principal de perfil-mascota)
class Avatar extends StatefulWidget{
  @override
  State<Avatar> createState() {
    // TODO: implement createState
    return _Avatar();
  }

}


class _Avatar extends State<Avatar>{
  String value="";


  @override
  Widget build(BuildContext context) {

    var textNamePet=Text(
      value,
      style: GoogleFonts.montserrat(
          fontSize: 25,
          fontWeight: FontWeight.w700

      ),
    );

    // TODO: implement build
    return Column(
      children: [
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(200),
            image: DecorationImage(
              image: AssetImage("assets/6.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: InkWell(
            onTap: (){
              setState(() {
              });
            },
          ),
        ),

        const SizedBox(height: 20,),

        textNamePet,

        textFieldName_pet(),

      ],
    );
  }

  //metodo de nombre para la mascota
  Widget textFieldName_pet() {


    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child:  TextField(
        //controlador del cuadro del texto,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.pets),
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
            },
          ),
          hintText: '@tu mascota',
        ),
        onChanged: (value)=>setState(() =>
        this.value=value
        ),
      ),
    );
  }//final metodo textFieldName_Pet


}