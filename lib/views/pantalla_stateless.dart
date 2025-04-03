import 'package:flutter/material.dart';

class PantallaStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatelessWidget')),
      body: Center(
        child: Text(
          'Este es un texto fijo.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}