import 'package:flutter/material.dart';
import 'views/pantalla_inicio.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaInicio(),
    );
  }
}