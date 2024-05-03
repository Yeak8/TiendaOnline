import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
    this.showShadow = false,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCancelCallback press;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      // Define la decoración del contenedor, incluida la sombra si showShadow es true.
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              offset: const Offset(0, 6),
              blurRadius: 10,
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
            ),
        ],
      ),
      // Contenedor que contiene un TextButton con el icono.
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: kPrimaryColor, // Color del icono.
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white, // Color de fondo del botón.
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), // Forma del botón.
        ),
        onPressed: press, // Función de devolución de llamada al presionar el botón.
        child: Icon(icon), // Icono dentro del botón.
      ),
    );
  }
}
