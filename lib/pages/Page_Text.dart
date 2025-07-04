import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_Text extends StatefulWidget {
  const Page_Text({super.key});

  @override
  State<Page_Text> createState() => _Page_TextState();
}

class _Page_TextState extends State<Page_Text> {
  @override
  Widget build(BuildContext context) {
  final widgetData = ModalRoute.of(context)!.settings.arguments as Map;
  final style_descipcion = TextStyle(fontSize: 20.0);
  final style_code = TextStyle(fontFamily: "monospace", color: Colors.white);

  return Scaffold(
      appBar: AppBar(
        title: Text(
          widgetData['nombre'],
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20.0, color: Color(0xFF212121)),
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              color: Colors.grey[100],
              elevation: 6,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      widgetData['nombre'],
                      style: GoogleFonts.poppins(textStyle: style_descipcion),
                    ),
                    subtitle: Text(
                      widgetData["descripcion"],
                      style: GoogleFonts.poppins(textStyle: style_descipcion),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black87,
                    ),
                    child: Text(
                      widgetData["codigo"],
                      style: GoogleFonts.poppins(textStyle: style_code),
                    ),
                  ),
                ],
              ),
            ),

            Divider(),
            ...((widgetData["propiedades_detalladas"] as List<dynamic>).map((
              propiedades,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  color: Colors.grey[100],
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: ListTile(
                            //leading: ,
                            title: Text(
                              propiedades["nombre"],
                              style: GoogleFonts.poppins(
                                textStyle: style_descipcion,
                              ),
                            ),
                            subtitle: Text(
                              propiedades["descripcion_extendida"],
                              style: GoogleFonts.poppins(
                                textStyle: style_descipcion,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // conteiner para agregar el codigo jeje
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              propiedades["ejemplo_propiedad"],
                              style: GoogleFonts.poppins(textStyle: style_code),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );

  }
}