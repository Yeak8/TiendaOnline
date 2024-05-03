import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white, // Fondo de la aplicación
      fontFamily: "Muli", // Fuente utilizada en la aplicación
      appBarTheme: const AppBarTheme(
        color: Colors.white, // Color de fondo de la barra de aplicación
        elevation: 0, // Elevación de la barra de aplicación
        iconTheme: IconThemeData(color: Colors.black), // Tema de los iconos de la barra de aplicación
        titleTextStyle: TextStyle(color: Colors.black), // Estilo del texto del título de la barra de aplicación
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: kTextColor), // Estilo del texto grande
        bodyMedium: TextStyle(color: kTextColor), // Estilo del texto mediano
        bodySmall: TextStyle(color: kTextColor), // Estilo del texto pequeño
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always, // Comportamiento de la etiqueta flotante
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20), // Relleno del contenido
        enabledBorder: outlineInputBorder, // Borde cuando está habilitado
        focusedBorder: outlineInputBorder, // Borde cuando está enfocado
        border: outlineInputBorder, // Borde predeterminado
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity, // Densidad visual adaptativa
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0, // Elevación del botón elevado
          backgroundColor: kPrimaryColor, // Color de fondo del botón elevado
          foregroundColor: Colors.white, // Color del texto del botón elevado
          minimumSize: const Size(double.infinity, 48), // Tamaño mínimo del botón elevado
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)), // Forma del botón elevado
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(28)), // Radio de borde
  borderSide: BorderSide(color: kTextColor), // Color del borde
  gapPadding: 10, // Relleno de brecha
);
