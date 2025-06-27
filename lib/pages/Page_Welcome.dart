import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Page_Welcome extends StatefulWidget {
  const Page_Welcome({super.key});

  @override
  State<Page_Welcome> createState() => _Page_WelcomeState();
}

class _Page_WelcomeState extends State<Page_Welcome> {
  List<dynamic> widgetsData = [];//

  Future<void> cargarWidgetsDesdeJson() async {
    final String response = await rootBundle.loadString('assets/data/widgets_avanzado.json');// 
    final data = await json.decode(response);// Utilidades de Plataforma / Servicios
    setState(() {
      widgetsData = data;
    });
  }

  @override
  void initState() {// initState significa que se ejecuta una vez que el widget se ha creado y configurado
    super.initState();
    cargarWidgetsDesdeJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 194, 116),
      appBar: AppBar(
        title: Text(
          "BIENVENIDO AL GLOSARIO DE FLUTTER",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20.0, color: Color(0xFF212121)),
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Explora los widgets más usados",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 20.0),
              
              ...widgetsData.map((widgetData) {
                return Card(
                  shape: RoundedRectangleBorder(// RoundedRectangleBorder sirve para darle un borde a la card
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        widgetData['nombre'],
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
