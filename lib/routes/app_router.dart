import 'package:go_router/go_router.dart';
import 'package:hola_mundo/views/Temporizadores.dart';
import 'package:hola_mundo/views/home_view.dart';
import 'package:hola_mundo/views/profile_view.dart';
import 'package:hola_mundo/views/restaurante/detalle_view.dart';
import 'package:hola_mundo/views/restaurante/restaurante_view.dart';
import 'package:hola_mundo/views/settings_view.dart';
import 'package:hola_mundo/views/lista_estudiantes.dart';
import 'package:hola_mundo/views/tarea_pesada.dart';
import 'package:hola_mundo/views/establecimientos/establecimiento_create_view.dart';
import 'package:hola_mundo/views/establecimientos/establecimiento_edit_view.dart';
import 'package:hola_mundo/views/establecimientos/establecimientos_list_view.dart';

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
        //!Rutas para el manejo de Establecimientos
    //!Ruta para la lista de establecimientos
    GoRoute(
      path: '/establecimientos',
      name: 'establecimientos',
      builder: (context, state) => const EstablecimientosListView(),
    ),
    //!Ruta para editar de un establecimiento
    GoRoute(
      path: '/establecimientos/edit/:id',
      builder: (context, state) {
        //*se captura el id del establecimiento
        final id = int.parse(state.pathParameters['id']!);
        return EstablecimientoEditView(id: id);
      },
    ),
    //!Ruta para crear un nuevo establecimiento
    GoRoute(
      path: '/establecimientos/create',
      builder: (context, state) => const EstablecimientoCreateView(),
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