import 'dart:async';
import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:hola_mundo/views/base_view.dart';

class TareaPesada extends StatefulWidget {
  const TareaPesada({super.key});

  @override
  State<TareaPesada> createState() => _TareaPesadaState();
}

class _TareaPesadaState extends State<TareaPesada> {
  String _resultado = 'Presiona el botón para iniciar la tarea';
  bool _procesando = false;

  Future<void> _ejecutarTareaPesada() async {
    setState(() {
      _procesando = true;
      _resultado = 'Procesando...';
    });

    final receivePort = ReceivePort();

    // Inicia el Isolate
    await Isolate.spawn(_tareaPesadaIsolate, receivePort.sendPort);

    // Espera la respuesta del Isolate
    final respuesta = await receivePort.first;

    // Verifica que el widget siga montado antes de actualizar la UI
    if (!mounted) return;

    setState(() {
      _procesando = false;
      _resultado = respuesta.toString();
    });
  }

  // Tarea que se ejecutará en el isolate
  static void _tareaPesadaIsolate(SendPort sendPort) {
    int suma = 0;
    for (int i = 0; i < 100000000; i++) {
      suma += i;
    }
    sendPort.send('Suma terminada: $suma');
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Tarea pesada',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_resultado, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            if (_procesando) const CircularProgressIndicator(),
            if (!_procesando)
              ElevatedButton.icon(
                onPressed: _ejecutarTareaPesada,
                icon: const Icon(Icons.play_arrow),
                label: const Text('Iniciar tarea pesada'),
              ),
          ],
        ),
      ),
    );
  }
}
