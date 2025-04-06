import 'package:flutter/material.dart';

class VerUsuarios extends StatefulWidget {
  final List<String> usuarios;

  const VerUsuarios({super.key, required this.usuarios});

  @override
  State<VerUsuarios> createState() => _VerUsuariosState();
}

class _VerUsuariosState extends State<VerUsuarios> {
  @override
  void initState() {
    super.initState();
    print('VerUsuarios - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('VerUsuarios - didChangeDependencies');
  }

  @override
  void dispose() {
    print('VerUsuarios - dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('VerUsuarios - build');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: widget.usuarios.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 255, 208, 248),
            child: Center(
              child: Text(
                widget.usuarios[index],
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
