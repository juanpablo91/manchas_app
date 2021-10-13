import 'package:flutter/material.dart';
import 'package:manchas_app/user/ui/screens/loginpage2.dart';


//routes
import 'package:manchas_app/user/ui/screens/welcompage.dart';
import 'package:manchas_app/user/ui/screens/siginpage.dart';
import 'package:manchas_app/user/ui/screens/loginpage.dart';

//bloc provider
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:manchas_app/user/bloc/bloc_user.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Manchas beta',
          theme: ThemeData(
            primarySwatch: Colors.yellow,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),

          //routes(rutas de las paginas)
          initialRoute:WelcomPage.id,
          routes: {

            WelcomPage.id:(_) =>WelcomPage(),
            LoginPage.id:(_) =>LoginPage(),
            SiginPage.id:(_)=>SiginPage(),
            LoginPage2.id:(_)=>LoginPage2(),

          },//const MyHomePage(title: 'Manchas app'),

        ),

        bloc: UserBloc()

    );
  }
}


