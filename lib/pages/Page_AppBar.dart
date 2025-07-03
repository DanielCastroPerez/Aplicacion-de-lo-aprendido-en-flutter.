import 'package:flutter/material.dart';

class Page_AppBar extends StatelessWidget {
  const Page_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetData = ModalRoute.of(context)!.settings.arguments as Map;
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
              child: Image.asset(widgetData["imagen"], fit: BoxFit.fill),
            ),
            Container(
              //Conteiner explicacion
              padding: EdgeInsets.all(16.0),

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),

              child: Text(widgetData["descripcion"],
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
