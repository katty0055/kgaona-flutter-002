import 'package:flutter/material.dart';

class PantallaContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto'),
      actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior (Inicio)
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 242, 218, 248), // Color de fondo del botón
              foregroundColor: Colors.white,  // Color del texto
              elevation: 1,                   // Sin sombra para que combine con la AppBar
            ),
            child: const Text('Inicio'),
          ),
        ],
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contáctanos',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),        
      ),
    );
  }
}