import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'routes.dart'; // Importamos las rutas definidas en otro archivo
import 'theme.dart'; // Importamos el tema de la aplicación

void main() {
  runApp(const MyApp()); // Iniciamos la aplicación Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Constructor constante

  // Este widget es la raíz de tu aplicación.
  //test@gmail.com
  //fffjhusmuee
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Deshabilitamos el banner de debug
      title: 'Tienda en online', // Título de la aplicación
      theme: AppTheme.lightTheme(context), // Definimos el tema de la aplicación
      initialRoute:
          SplashScreen.routeName, // Ruta inicial al iniciar la aplicación
      routes: routes, // Definimos las rutas de la aplicación
    );
  }
}
