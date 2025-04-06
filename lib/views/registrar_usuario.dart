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
  void initState() {
    super.initState();
    print('RegistrarUsuario - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('RegistrarUsuario - didChangeDependencies');
  }

  @override
  void dispose() {
    print('RegistrarUsuario - dispose');
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('RegistrarUsuario - build');
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
             style: ElevatedButton.styleFrom(
             backgroundColor: const Color.fromARGB(255, 207, 255, 199),
             foregroundColor: const Color.fromARGB(255, 255, 203, 240),
  ),
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
