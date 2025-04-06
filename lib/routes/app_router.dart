import 'package:go_router/go_router.dart';
import 'package:hola_mundo/views/Temporizadores.dart';
import 'package:hola_mundo/views/home_view.dart';
import 'package:hola_mundo/views/profile_view.dart';
import 'package:hola_mundo/views/restaurante/detalle_view.dart';
import 'package:hola_mundo/views/restaurante/restaurante_view.dart';
import 'package:hola_mundo/views/settings_view.dart';
import 'package:hola_mundo/views/lista_estudiantes.dart';
import 'package:hola_mundo/views/tarea_pesada.dart';

final GoRouter appRouter = GoRouter (
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeView(),
    ),
     GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsView(),
    ),
     GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileView(),
    ),
     GoRoute(
      path: '/lista_estudiantes',
      builder: (context, state) => ListaEstudiantes(),
      ),
      GoRoute(
      path: '/contadores',
      builder: (context, state) => Temporizadores(),
      ),
      GoRoute(
      path: '/tarea_pesada',
      builder: (context, state) => TareaPesada(),
      ),
       GoRoute(
      path: '/restaorante',
      builder: (context, state) => RestauranteView(),
      ),
      GoRoute(
      path: '/detalle/:id',
      name: 'detalle',
      builder: (context, state) {
      final id = state.pathParameters['id']!;
      return DetalleView(id: id); 
  },
),
  ],
);