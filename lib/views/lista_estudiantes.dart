import 'package:flutter/material.dart';
import 'package:hola_mundo/views/base_view.dart';

class ListaEstudiantes extends StatefulWidget {
  const ListaEstudiantes({super.key});

  @override
  State<ListaEstudiantes> createState() => _ListaEstudiantesState();
}

class _ListaEstudiantesState extends State<ListaEstudiantes> {
  late Future<List<String>> _futureEstudiantes;

  Future<List<String>> _cargarEstudiantes() async {
    await Future.delayed(const Duration(seconds: 3)); // Simula carga remota
    return ['Carlos', 'Ana', 'Luis', 'Valentina', 'Adrián', 'Larry', 'Santiago', 'Emiliano', 'Juanito'];
  }

  @override
  void initState() {
    super.initState();
    _futureEstudiantes = _cargarEstudiantes();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: 'Lista de Estudiantes',
      body: FutureBuilder<List<String>>(
        future: _futureEstudiantes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error al cargar los estudiantes'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay estudiantes'));
          }

          final estudiantes = snapshot.data!;
          return ListView.builder(
            itemCount: estudiantes.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text(estudiantes[index]),
              );
            },
          );
        },
      ),
    );
  }
}
