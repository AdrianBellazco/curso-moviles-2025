import 'package:flutter/material.dart';

class RegistrarUsuario extends StatefulWidget {
  final void Function(String) onGuardar;

  const RegistrarUsuario({super.key, required this.onGuardar});

  @override
  State<RegistrarUsuario> createState() => _RegistrarUsuarioState();
}

class _RegistrarUsuarioState extends State<RegistrarUsuario> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Nombre del usuario',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final nombre = _controller.text.trim();
              if (nombre.isNotEmpty) {
                widget.onGuardar(nombre);
                _controller.clear();
              }
            },
            child: const Text('Registrar'),
          ),
        ],
      ),
    );
  }
}
