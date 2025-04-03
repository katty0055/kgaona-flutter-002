import 'package:flutter/material.dart';
import 'pantalla_stateless.dart';
import 'pantalla_stateful.dart';
import 'pantalla_acerca.dart';
import 'pantalla_contacto.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24),
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