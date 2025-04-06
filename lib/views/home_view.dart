import 'package:flutter/material.dart';
import 'package:hola_mundo/views/add_user.dart';
import 'package:hola_mundo/views/base_view.dart';
import 'package:hola_mundo/views/contador.dart';
import 'package:hola_mundo/views/registrar_usuario.dart';
import 'package:hola_mundo/views/ver_usuarios.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> usuarios = [];

  void agregarUsuario(String nombre) {
    setState(() {
      usuarios.add(nombre);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BaseView(
        title: 'UCEVA',
        tabBar: const TabBar(
          tabs: [
            Tab(text: 'Registrar'),
            Tab(text: 'Usuarios'),
          ],
        ),
        body: TabBarView(
          children: [
            RegistrarUsuario(onGuardar: agregarUsuario),
            VerUsuarios(usuarios: usuarios),
          ],
        ),
      ),
    );
  }
}


