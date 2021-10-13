import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manchas_app/user/ui/screens/welcompage.dart';

import 'siginpage.dart';

//fonts google
import 'package:google_fonts/google_fonts.dart';



class LoginPage extends StatefulWidget{

  static String id="Login_page";

  @override
  State<LoginPage> createState() {
    return stateLoginPage();
  }

}

class stateLoginPage extends State<LoginPage>{

  final text_o=Center(
    child:Text
      ("o",
      style: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black26,
      ),
    ),
  );

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

  bool isPasswordVisible=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [

              const SizedBox(height: 30),
              Logo(),
              const SizedBox(height: 30),

              //emailfield
              textOfField("correo electroico"),
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

              const SizedBox(height: 30,),

              //botton login
              Center(
                child: Column(
                  children: [
                    FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                      child:  Text("Ingresar",
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute
                          (builder: (context)=> WelcomPage()));
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

              const SizedBox(height: 15,),

              //text o
              text_o,

              //icons sigin con apple o google
              icons_buttons,

              const SizedBox(height: 15,),

              //link.to login page
              textLink("Todabia no tengo\n una cuenta"," Registrarme",SiginPage()),

            ],
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
                });;
              }
          ),
        ),

        obscureText: isPasswordVisible,

      ),
    );
  }

}



//link texto
class textLink extends StatelessWidget{

  String textbefore="";
  String textAfter="";

  var place=SiginPage();

  textLink(
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
                    color: Colors.redAccent,
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