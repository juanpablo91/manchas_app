import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//routes
import 'loginpage2.dart';
import 'welcompage.dart';
import 'package:manchas_app/user/ui/screens/loginpage.dart';

//fonts google
import 'package:google_fonts/google_fonts.dart';
class SiginPage extends StatefulWidget{

  static String id="SiginPage";

  @override
  State<SiginPage> createState() {
    return stateSiginPage();
  }

}

class stateSiginPage extends State<SiginPage>{

  final icons_buttons=Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        IconButton(onPressed: (){},
          icon: FaIcon(FontAwesomeIcons.google),
          splashColor: Colors.amberAccent,
        ),

        IconButton(onPressed: (){},
          icon: FaIcon(FontAwesomeIcons.apple),
          splashColor: Colors.amberAccent,
        ),
      ],
    ),
  );


   var link=LoginPage();

  String password ="";


  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return SafeArea(
      child: Scaffold(
        body:ListView(
            children: [

              const SizedBox(height: 20),
              Logo(),
              const SizedBox(height: 20),

              //Name Field
              textOfField("nombre"),
              Align(
                alignment: Alignment.topLeft,
                child: _textFieldName(),
              ),

              const SizedBox(height: 20,),

              //emailfield
              textOfField("correo electronico"),
              Align(
                alignment: Alignment.topLeft,
                child: _textFieldEmail(),
              ),

              const SizedBox(height: 20,),

              //Password field
             textOfField("contraseña"),
              Align(
                alignment: Alignment.topLeft,
                child: _textFieldPassword(),
              ),

              const SizedBox(height: 20,),

                //buttun registrarse
              Center(
                child: Column(
                  children: [
                    FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                      child:  Text("Registrarse",
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute
                          (builder: (context)=> LoginPage2()));
                      },
                      color: Colors.yellow[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      splashColor: Colors.red,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              icons_buttons,

              textLink_2("ya tengo una cuenta ", "ingresar",LoginPage()),

            ]
          ),

      ),
    );
  }

  Widget _textFieldName(){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),

      child:  TextField(

        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_add_alt_1_outlined),
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: (){},
          ),
          labelText: 'Dueño',
          hintText: 'ej:angelica'
        ),
      ),
    );
  }


   Widget _textFieldEmail(){

    final emailcontroler=TextEditingController();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child:  TextField(
        //controlador del cuadro del texto
        controller: emailcontroler,

        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: ()=>emailcontroler.clear(),
          ),
          hintText: 'Tu correo@gmail.com',
        ),
      ),
    );
  }
  bool isPasswordVisible=false;


   Widget _textFieldPassword(){

     return Container(
       padding: EdgeInsets.symmetric(horizontal: 30),
       child:  TextField(
         decoration: InputDecoration(
             prefixIcon: Icon(Icons.person_add_alt_1_outlined),
             hintText: 'Contraseña',
             suffixIcon: IconButton(
               icon: isPasswordVisible
                   ?Icon(Icons.visibility)
                   :Icon(Icons.visibility_off),
               onPressed: (){
                 setState(() {
                   isPasswordVisible=!isPasswordVisible;
                 });
               }
             ),
         ),

         obscureText: isPasswordVisible,

       ),
     );
   }

}

class textOfField extends StatelessWidget{

  String oftext="";

  textOfField(
      this.oftext
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child:Align(
        alignment: Alignment.topLeft,
        child: Text(
          oftext,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.yellow[900],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}


class Logo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Container(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/2.png'),

            Text(
              'Manchas',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),

          ],
        ),
      ),


    );

  }
}

class textLink_2 extends StatelessWidget{

  String textbefore="";
  String textAfter="";

  var place=LoginPage();

  textLink_2(
      this.textbefore,
      this.textAfter,
      this.place,
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Center(
        child: RichText(
            text: TextSpan(
                children: [

                  TextSpan(
                      text: textbefore,
                      style: GoogleFonts.montserrat(
                        color: Colors.black54,
                        fontSize: 15,
                      )
                  ),

                  TextSpan(
                      text:textAfter,
                      style: GoogleFonts.montserrat(
                        color: Colors.yellow[900],
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),

                      recognizer: TapGestureRecognizer()
                        ..onTap=(){
                          Navigator.of(context).push(MaterialPageRoute
                            (builder: (context)=> place));
                        }

                  ),

                ]
            )
        ),
      );


  }
}

