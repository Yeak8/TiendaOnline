import 'package:flutter/material.dart';

import '../constants.dart'; // Importa las constantes de la aplicación.
import '../screens/sign_up/sign_up_screen.dart'; // Importa la pantalla de registro.

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "No tienes una cuenta? ", // Texto estático indicando que no tiene una cuenta.
          style: TextStyle(
              fontSize: 16), // Estilo de texto para el texto estático.
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
              context,
              SignUpScreen
                  .routeName), // Navega a la pantalla de registro al hacer clic en este texto.
          child: const Text(
            "Registrate", // Texto para ir a la pantalla de registro.
            style: TextStyle(
                fontSize: 16,
                color:
                    kPrimaryColor), // Estilo de texto para el texto de registro.
          ),
        ),
      ],
    );
  }
}
