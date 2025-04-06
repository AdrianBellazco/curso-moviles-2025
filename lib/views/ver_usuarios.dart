import 'package:flutter/material.dart';

class VerUsuarios extends StatelessWidget {
  final List<String> usuarios;

  const VerUsuarios({super.key, required this.usuarios});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: usuarios.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: const  Color.fromARGB(255, 255, 168, 187),
            child: Center(
              child: Text(
                usuarios[index],
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
