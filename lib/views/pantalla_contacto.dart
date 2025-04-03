import 'package:flutter/material.dart';

class PantallaContacto extends StatefulWidget {
  @override
  _PantallaContactoState createState() => _PantallaContactoState();
}

class _PantallaContactoState extends State<PantallaContacto> {
  final TextEditingController _controller = TextEditingController(); // Controlador para el TextField

 @override
  void initState() {
    super.initState();
    print('PantallaContacto: initState llamado'); // Mensaje al inicializar la pantalla
  }

  @override
  void dispose() {
    print('PantallaContacto: dispose llamado'); // Mensaje al cerrar la pantalla
    print('Mensaje ingresado: ${_controller.text}'); // Imprime el mensaje ingresado
    _controller.dispose(); // Libera los recursos del controlador
    super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller, // Asigna el controlador al TextField
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Escribe tu mensaje',
                ),
              ),
            ),
          ],
        ),        
      ),
    );
  }
}