import 'package:flutter/material.dart';

class PantallaAcerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acerca de')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
            'Sobre nosotros',
            style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Regresa a la pantalla anterior
                },
                child: Text('Volver'),
              ),
          ]
        )
      ),
    );
  }
}