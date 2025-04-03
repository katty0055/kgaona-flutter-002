import 'package:flutter/material.dart';

class PantallaAcerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acerca de')),
      body: Center(
        child: Text(
          'Sobre nosotros',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}