import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key,
    required this.svgIcon, // El nombre del archivo SVG del ícono.
  }) : super(key: key);

  final String svgIcon; // El nombre del archivo SVG del ícono.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // Espaciado alrededor del ícono.
      child: SvgPicture.asset( // Widget para mostrar el ícono SVG.
        svgIcon, // Ruta del archivo SVG del ícono.
        height: 16, // Altura del ícono.
        width: 16, // Ancho del ícono.
      ),
    );
  }
}
