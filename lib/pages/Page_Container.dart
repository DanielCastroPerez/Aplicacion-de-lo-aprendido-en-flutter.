import 'package:flutter/material.dart';

class Page_Container extends StatelessWidget {
  const Page_Container({super.key});

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
          children: <Widget>[
            Container(
              //CONTEINER DE IMAGEN
              alignment: Alignment.center, // centro la imagen
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset("assets/colum.jpg", fit: BoxFit.fill),
            ),

            Container(
              //CONTEINER DE EXPLICACION DEL WIDGET
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                """En Flutter, un Container es un widget versátil que funciona como un "contenedor" para otros widgets,
               permitiendo a los desarrolladores organizar, posicionar y estilizar la interfaz de usuario. 
               Funciona como una caja que puede tener propiedades como color de fondo, bordes, rellenos, márgenes, y dimensiones (ancho y alto).
              """,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.justify, // SOLO JUSTIFICADO EL TEXTO
              ),
            ),
            Container(
              //CONTEINER DE EJEMPLO DEL WIDGET
              padding: EdgeInsets.all(10.0),

              decoration: BoxDecoration(
                //AQLUI SOLO SE USA PARAMODIFICAR COLOR Y RADIO
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),

              child: Text(
                """
Container(
  padding: EdgeInsets.all(16), 
  margin: EdgeInsets.symmetric(vertical: 10), 
  decoration: BoxDecoration(
    color: Colors.blue[100], 
    borderRadius: BorderRadius.circular(12), 
    border: Border.all(color: Colors.blue, width: 2), 
  ),
  width: double.infinity, 
  child: Text(
    'Este es un ejemplo de Container', 
    style: TextStyle(fontSize: 18),
    textAlign: TextAlign.center,
  ),
)
""",

                style: TextStyle(
                  //AQUI SOLO SE MODIFICA EL COLOR DEL TEXTO  PERO EL COLOR DE FONDO ES APARTE
                  fontFamily: 'monospace',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
