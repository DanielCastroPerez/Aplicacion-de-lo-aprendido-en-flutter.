import 'package:flutter/material.dart';

class Page_Center extends StatelessWidget {
  const Page_Center({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Widget Conteiner"),
        elevation: 10.0,
        backgroundColor: Colors.cyanAccent,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Container(
              alignment: Alignment.center,// centro la imagen 
              margin: EdgeInsets.only(bottom:20.0 ),
              child: Image.asset("assets/colum.jpg",fit: BoxFit.fill,)
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text("""En Flutter, un Container es un widget versátil que funciona como un "contenedor" para otros widgets,
               permitiendo a los desarrolladores organizar, posicionar y estilizar la interfaz de usuario. 
               Funciona como una caja que puede tener propiedades como color de fondo, bordes, rellenos, márgenes, y dimensiones (ancho y alto).
              """,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}