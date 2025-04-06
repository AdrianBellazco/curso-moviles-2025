import 'package:flutter/material.dart';
import 'package:hola_mundo/services/detalles_service.dart';
import 'package:hola_mundo/views/base_view.dart';

class DetalleView extends StatefulWidget {
  final String id;
  const DetalleView({super.key, required this.id});

  @override
  State<DetalleView> createState() => _DetalleViewState();
}

class _DetalleViewState extends State<DetalleView> {
  late Future<Map<String, dynamic>> _detalleFuture;

  @override
  void initState() {
    super.initState();
    _detalleFuture = DetallesService.obtenerDetallePlato(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Detalle del plato',
      body: FutureBuilder<Map<String, dynamic>>(
        future: _detalleFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final plato = snapshot.data!;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(plato['strMealThumb']),
                ),
                const SizedBox(height: 16),
                Text(
                  plato['strMeal'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'ID: ${plato['idMeal']}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Receta:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  plato['strInstructions'] ?? 'Sin instrucciones disponibles',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
