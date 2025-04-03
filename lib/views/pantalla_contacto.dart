import 'package:flutter/material.dart';

class PantallaContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto')),
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