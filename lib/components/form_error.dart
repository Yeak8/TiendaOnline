import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors, // Lista de errores a mostrar.
  }) : super(key: key);

  final List<String?> errors; // Lista de errores.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)), // Genera widgets de texto de error para cada error en la lista.
    );
  }

  // Método para construir un widget de texto de error con un ícono de error.
  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset( // Ícono de error.
          "assets/icons/Error.svg",
          height: 16,
          width: 16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(error), // Texto de error.
      ],
    );
  }
}
