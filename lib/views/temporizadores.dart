import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hola_mundo/views/base_view.dart';

class Temporizadores extends StatefulWidget {
  const Temporizadores({super.key});

  @override
  State<Temporizadores> createState() => _TemporizadoresState();
}

class _TemporizadoresState extends State<Temporizadores> {
  int _contador = 0;
  Timer? _timer;
  bool _corriendo = false;

  void _iniciarTemporizador() {
    if (_corriendo) return; // Evitar múltiples timers
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _contador++;
      });
    });
    setState(() {
      _corriendo = true;
    });
  }

  void _pausarTemporizador() {
    _timer?.cancel();
    setState(() {
      _corriendo = false;
    });
  }

  void _reiniciarContador() {
    _timer?.cancel();
    setState(() {
      _contador = 0;
      _corriendo = false;
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Parar el timer al cerrar la vista
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Contador',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contador con Timer:',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(
              '$_contador',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 182, 255, 169),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),

                  ),
                  onPressed: _iniciarTemporizador,
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Iniciar'),
                  
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 150, 150),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),

                  ),
                  onPressed: _pausarTemporizador,
                  icon: const Icon(Icons.pause),
                  label: const Text('Pausar'),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 151, 147, 255),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),

                  ),
                  onPressed: _reiniciarContador,
                  icon: const Icon(Icons.restart_alt),
                  label: const Text('Reiniciar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
