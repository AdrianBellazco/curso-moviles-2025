import 'package:flutter/material.dart';import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:hola_mundo/routes/app_router.dart';
import 'package:hola_mundo/themes/app_theme.dart';


// punto de partida de la aplicacion 
void main() async {

  WidgetsFlutterBinding.ensureInitialized(); // !Importante para que funcione el doten

  // ! Carga el archivo .env en la raiz del proyecto
    await dotenv.load(fileName: ".env");
    runApp(const MyApp());
}

// StatelessWidget | widget que no cambia
// StatefulWidget | widget que si cambia 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( //define la esstructura de la app
      theme: 
        AppTheme.lightTheme, //tema personalizado
        title: 'Flutter - Uceva',
        routerConfig: appRouter, //usa el router configurado 
     
      );
  }
}