import 'package:flutter/material.dart';

class Page_AppBar extends StatelessWidget {
  const Page_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetData = ModalRoute.of(context)!.settings.arguments as Map;
    final title_widget = widgetData['AppBar'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('widget AppBar'),
        backgroundColor: Colors.blue,
        elevation: 10,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Image.asset("assets/AppBar.jpg", fit: BoxFit.fill),
            ),
            Container(
              //Conteiner explicacion
              padding: EdgeInsets.all(16.0),

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),

              child: Text(
                """
                Barra de aplicación superior que puede mostrar título, íconos, acciones, etc. 
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
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20),
            Container(
              //Para dar un ejemplo de widget
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(widgetData['codigo'],
                style: TextStyle(fontFamily: "monospace", color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
