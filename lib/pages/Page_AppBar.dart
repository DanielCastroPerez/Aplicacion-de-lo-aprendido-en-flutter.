import 'package:flutter/material.dart';

class Page_AppBar extends StatelessWidget {
  const Page_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('widget AppBar'),
        backgroundColor:  Colors.blue,
        elevation: 10,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0) ,// agrega un espacio de 16 pixeles alrededor del contenido
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//
          children: [
            Container(
              child: Image.asset("assets/AppBar.jpg", fit: BoxFit.fill),
              margin: EdgeInsets.only(bottom: 20.0),// agrega un espacio de 20 pixeles debajo del contenido
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: 500,
              child: SingleChildScrollView(
                child: Text(
                  """Barra de aplicación superior que puede mostrar título, íconos, acciones, etc. 
                La barra de aplicación se utiliza para proporcionar información adicional sobre la aplicación y para permitir al usuario interactuar con ella. 
                Puede ser utilizada para mostrar el título de la aplicación, los íconos de la aplicación, las acciones que se pueden realizar en la aplicación, 
                
                la información de la aplicación y los detalles de la aplicación. 
                También se utiliza para permitir al usuario interactuar con la 
                aplicación, como iniciar sesión, cerrar sesión, cambiar la configuración de la aplicación, etc. 
                La barra de aplicación se utiliza en aplicaciones móviles, web y escritorio. 
                En aplicaciones móviles, la barra de aplicación se utiliza para proporcionar información adicional sobre la aplicación y para permitir al usuario interactuar con ella. 
                En aplicaciones web, la barra de aplicación se utiliza para proporcionar información adicional sobre la aplicación y para permitir al usuario interactuar con ella. 
                En aplicaciones escritorio, la barra de aplicación se utiliza
                
                """,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              child: Text(
                """
                Widget build(BuildContext context){
                return Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: const Text('Aplicación AppBar'),
                    backgroundColor: Colors.orange,
                  )},
                  """,
                style: TextStyle(
                  fontFamily: 'monospace'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
