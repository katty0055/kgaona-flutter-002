import 'package:flutter/material.dart';

class PantallaStateful extends StatefulWidget {
  @override
  _PantallaStatefulState createState() => _PantallaStatefulState();
}

class _PantallaStatefulState extends State<PantallaStateful> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Has presionado el botón:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_contador',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementarContador,
        tooltip: 'Incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}