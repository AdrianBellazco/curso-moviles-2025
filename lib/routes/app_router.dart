import 'package:go_router/go_router.dart';
import 'package:hola_mundo/views/home_view.dart';
import 'package:hola_mundo/views/profile_view.dart';
import 'package:hola_mundo/views/settings_view.dart';

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
  ],
);