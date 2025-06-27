# practida_daniel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Instalacion de la libreria google_fonts
para usar google_fonts se nececita agrera en el archivo pubspec.yaml en dependencias: flutter:
google_fonts: ^2.1.0 abajo de la linea de dependencias
para usar la libreria se debe agregar la siguiente linea en el archivo main.dart
import 'package:google_fonts/google_fonts.dart';

tambien en terminal se debe ejecutar el comando: flutter pub get para instalar las dependencias
para usar google_fonts se debe agregar la siguiente linea en el archivo main.dart
Text('Hola Mundo', style: GoogleFonts.lato(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)

## pasos para leer el archivo json
1. Crear elen la capeta assets crear una capeta data
2. Agregar el archivo json en la capeta llamada widgets.json
3. agregar en el archivo pubspec.yaml  en flutter: agregar  - assets/data/widgets.json
4. en el archivo main.dart agregar el siguiente codigo
Future<Widget> _getData() async {
  final response = await http.get(Uri.parse('assets/data/widgets.json'));
  final data = jsonDecode(response.body);
  return data;
}