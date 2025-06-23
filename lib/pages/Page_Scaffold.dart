import 'package:flutter/material.dart';

// CLASE PRINCIPAL QUE MUESTRA UN EJEMPLO DEL WIDGET SCAFFOLD
class Page_Scaffold extends StatelessWidget {
  const Page_Scaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // WIDGET QUE ESTRUCTURA TODA LA PANTALLA CON ESTILO MATERIAL DESIGN
      appBar: AppBar(
        // APPBAR: ES EL ENCABEZADO DE LA PANTALLA
        title: Text("Widget Scaffold"),
        centerTitle: true, // CENTRO EL TÍTULO
        backgroundColor: Colors.teal, // COLOR DE FONDO DEL ENCABEZADO
        elevation: 10, // LE AGREGO SOMBRA AL ENCABEZADO 
      ),

      body: SingleChildScrollView(
        // AGREGO UN SCROLL PARA QUE EL CONTENIDO LARGO SE PUEDA DESPLAZAR
        padding: EdgeInsets.all(16), // ESPACIADO INTERIOR GENERAL
        child: Column(
          // COLUMNA PARA ORGANIZAR TODOS LOS ELEMENTOS VERTICALMENTE
          crossAxisAlignment: CrossAxisAlignment.start, // ALINEO A LA IZQUIERDA
          children: <Widget>[
            // CONTENEDOR PARA LA IMAGEN
            Container(
              margin: EdgeInsets.only(bottom: 20), // SEPARO LA IMAGEN DE LO DEMÁS bottom ESPACIO ABAJO DE LA IMAGEN
              child: Image.asset(
                "assets/Scaffold.jpg", // CARGO UNA IMAGEN DESDE LOS ASSETS
              fit: BoxFit.fill, // LA AJUSTO AL CONTENEDOR CON BoxFit
              ),
            ),

            // CONTENEDOR PARA LA EXPLICACIÓN
            Container(
              padding: EdgeInsets.all(10), // ESPACIADO INTERIOR
              decoration: BoxDecoration(//SOLO ES DECORAR EL CONTENEDOR 
                color: Colors.grey[200], // FONDO DEL CONTEINER PARA QUE SE VEA PRO
                borderRadius: BorderRadius.circular(8), // BORDES REDONDEADOS
              ),
              child: Text(
                """En Flutter, Scaffold es un widget que proporciona una estructura básica para la interfaz de usuario de una aplicación, 
siguiendo el diseño de Material Design. Es como un lienzo en blanco que organiza los elementos visuales principales de una aplicación, 
como la barra de aplicaciones, el cuerpo principal, la barra de navegación inferior, menús desplegables (drawers) y botones de acción flotantes.""",
                textAlign: TextAlign.justify, // TEXTO JUSTIFICADO
                style: TextStyle(fontSize: 20.0), // TAMAÑO DE LETRA MÁS GRANDE
              ),
            ),

            SizedBox(height: 20), // ESPACIO ENTRE SECCIONES

            // CONTENEDOR PARA EL CÓDIGO DE EJEMPLO
            Container(
              padding: EdgeInsets.all(10), // ESPACIADO INTERIOR
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8), // BORDES REDONDEADOS
              ),
              child: Text(
                '''Scaffold(
  appBar: AppBar(title: Text('Título')),
  body: Center(child: Text('Contenido principal')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
);''',
                style: TextStyle(
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
