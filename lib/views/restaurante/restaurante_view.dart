import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hola_mundo/models/meal_model.dart';
import 'package:hola_mundo/services/listado_service.dart';
import 'package:hola_mundo/views/base_view.dart';

class RestauranteView extends StatefulWidget {
  const RestauranteView({super.key});

  @override
  State<RestauranteView> createState() => _RestauranteViewState();
}

class _RestauranteViewState extends State<RestauranteView> {
  late Future<List<Meal>> _platosFuture;

  @override
  void initState() {
    super.initState();
    _platosFuture = ListadoService.obtenerListadoPlatos();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Menú del día',
      body: FutureBuilder<List<Meal>>(
        future: _platosFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final platos = snapshot.data!;

          return GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: platos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 4,
            ),
            itemBuilder: (context, index) {
              final plato = platos[index];
              return GestureDetector(
                onTap: () {
                  context.go('/detalle/${plato.idMeal}');
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.network(
                          plato.strMealThumb,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          plato.strMeal,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
