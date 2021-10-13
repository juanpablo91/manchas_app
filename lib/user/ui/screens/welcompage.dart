import 'package:flutter/material.dart';

//fonts google
import 'package:google_fonts/google_fonts.dart';
import 'package:manchas_app/user/ui/screens/siginpage.dart';
import 'package:manchas_app/user/ui/screens/loginpage.dart';
import 'package:manchas_app/widgets/button_navigate.dart';

   class WelcomPage extends StatelessWidget{

    static String id="welcom_page";

    //widgets complementarity
    final gradient=Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:<Color>[
              Color(0xffFFD645),
              Color(0xffFEA521),
              Color(0xffEF54BB)
            ],
          )
      ),
    );

    final logo_img=Container(
      child: Image.asset('assets/7.png'),
    );

    final tittle=Text(
      'Manchas',
      style: GoogleFonts.montserrat(
        fontSize: 49,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
      ),
    );

     @override
      Widget build(BuildContext context) {
     //TODO: implement build
     return SafeArea(
         child: Scaffold(
           backgroundColor: Colors.white,
          body:  Stack(
             children: [

               gradient,

               Center(
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     //logo-titlle
                     logo_img,

                     //tittle manchas
                     tittle,

                     const SizedBox(height:90),

                     //imagen perro
                     Container(
                       child: Image.asset('assets/1.png'),
                     ),

                     //eslogan
                     Text("cuida a tu mascota y lleva\n su carnet de vacunacion",
                       style: GoogleFonts.montserrat(
                         fontSize: 18,
                         fontWeight: FontWeight.w400,
                       ),
                     ),

                     const SizedBox(height:40),

                     //boton 1 registrarse
                     ButtonNavigate(text: "Registrarse",route:'SiginPage',color2: Colors.white,color: Colors.yellow.shade700,w: 33
                       ,h: 3,),

                     const SizedBox(height: 20),

                     //boton 2 (ingresar)
                     ButtonNavigate(text: "Ingresar",route:'Login_page',color2:Colors.yellow.shade900,color: Colors.white,
                       h: 3,w: 59,),

                   ],
                 ),
               )

             ],

           ),
          ),

         );

     }
    }