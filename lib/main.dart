import 'package:flutter/material.dart';
import 'package:practida_daniel/pages/Page_AppBar.dart';
import 'package:practida_daniel/pages/Page_Welcome.dart';
import 'package:practida_daniel/pages/Page_Scaffold.dart';
import 'package:practida_daniel/pages/Page_Container.dart';

void main() {// entonces este mein solo es como un indice de las pantallas?
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GLOSARIO",
      initialRoute: "/Page_Welcome",// este es el inicio de la pagina la primera que mostrara?
      routes:{// por lo que entiendo este es como todas las ventanas que va a recorrer no?
        "/Page_Welcome":(BuildContext context)=>Page_Welcome(),
        "/Page_Scaffold":(BuildContext context)=>Page_Scaffold(),
        "/Page_Container":(BuildContext context)=>Page_Container(),
        "/Page_AppBar":(BuildContext context)=>Page_AppBar(),
      },
    );
  }
}