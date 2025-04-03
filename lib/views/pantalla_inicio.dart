import 'package:flutter/material.dart';
import 'pantalla_stateless.dart';
import 'pantalla_stateful.dart';
import 'pantalla_acerca.dart';
import 'pantalla_contacto.dart';

class PantallaInicio extends StatefulWidget {
  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  int _contador = 0; // Variable de estado para el contador

  @override
  void initState() {
    super.initState();
    // Aquí puedes inicializar datos o realizar configuraciones necesarias
    print('PantallaInicio: initState llamado');
  }

  void _incrementarContador() {
    setState(() {
      _contador++; // Actualiza el estado del contador
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Contador: $_contador',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: _incrementarContador, // Incrementa el contador
              child: Text('Incrementar contador'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaAcerca()),
                );
              },
              child: Text('Ir a Acerca de'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaContacto()),
                );
              },
              child: Text('Ir a Contacto'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaStateless()),
                );
              },
              child: Text('Ir a StatelessWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaStateful()),
                );
              },
              child: Text('Ir a StatefulWidget'),
            ),
          ],
        ),
      ),
    );
  }
}