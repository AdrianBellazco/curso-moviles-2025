import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Importa el Drawer personalizado

class BaseView extends StatelessWidget {
  final String title;
  final Widget body;
  final TabBar? tabBar; // <- Aceptamos el TabBar opcional

  const BaseView({
    super.key,
    required this.title,
    required this.body,
    this.tabBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom: tabBar, // <- Aquí se inserta el TabBar si existe
      ),
      drawer: const CustomDrawer(),
      body: body,
    );
  }
}
