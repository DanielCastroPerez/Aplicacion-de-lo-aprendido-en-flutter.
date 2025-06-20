import 'package:flutter/material.dart';

class Page_Welcome extends StatelessWidget {
  const Page_Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bienvenido al glosario de FLUTTER ",
          style: TextStyle(color: const Color.fromARGB(255, 228, 225, 225)),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 134, 239),
      ),
      body:Center(
        child: Text(
        "Estos son los Widget que he usado",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color.fromARGB(255, 225, 103, 47),
          fontSize: 30,
        ),
      ),
      ), 
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // en estos botones los quiero al centro se que es con un center() pero no se donde ponerlo
          SizedBox(height: 18),
          SizedBox(
            height: 100,
            width: 200,
            child: FloatingActionButton(
              heroTag: "Boton1",
              onPressed: () {
                Navigator.pushNamed(context, "/Page_AppBar");
              }, // poque el child va abajo de }?
              child: Text(
                "Ir a la pagina del Widget AppBar",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            height: 100,
            width: 200,
            child: FloatingActionButton(
              heroTag: "Boton2",
              onPressed: () {
                Navigator.pushNamed(context, "/Page_Center");
              },
              child: Text(
                "Ir a la pagina del Widget Center",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            height: 100,
            width: 200,
            child: FloatingActionButton(
              heroTag: "Boton3",
              onPressed: () {
                Navigator.pushNamed(context, "/Page_Scaffold");
              },
              child: Text(
                "Ir a la pagina del Widget Scaffold",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
        ],
      ), //
    );
  }
}//floatingActionButton,mainAxisAlignment