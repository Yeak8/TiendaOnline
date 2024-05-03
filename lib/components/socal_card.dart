import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon, // Ruta del icono SVG
    this.press, // Función de retorno de llamada al presionar
  }) : super(key: key);

  final String? icon; // Ruta del icono SVG
  final Function? press; // Función de retorno de llamada al presionar

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?, // Invoca la función de retorno de llamada al presionar
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10), // Margen horizontal del contenedor
        padding: const EdgeInsets.all(12), // Relleno interno del contenedor
        height: 40, // Altura del contenedor
        width: 40, // Ancho del contenedor
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9), // Color de fondo del contenedor
          shape: BoxShape.circle, // Forma circular del contenedor
        ),
        child: SvgPicture.asset(icon!), // Icono SVG dentro del contenedor
      ),
    );
  }
}
