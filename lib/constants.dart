import 'package:flutter/material.dart';

// Colores primarios
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

// Gradiente primario
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

// Color secundario
const kSecondaryColor = Color(0xFF979797);

// Color de texto
const kTextColor = Colors.black;

// Duración de la animación
const kAnimationDuration = Duration(milliseconds: 200);

// Estilo de encabezado
const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Duración por defecto
const defaultDuration = Duration(milliseconds: 250);

// Expresión regular para validar email
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

// Errores de formulario
const String kEmailNullError = "Por favor introduzca su correo electrónico";
const String kInvalidEmailError =
    "Por favor introduzca un correo electrónico válido";
const String kPassNullError = "Por favor, introduzca su contraseña";
const String kShortPassError = "La contraseña es demasiado corta";
const String kMatchPassError = "Las contraseñas no coinciden";
const String kNamelNullError = "Por favor, escriba su nombre";
const String kPhoneNumberNullError =
    "Por favor, introduzca su número de teléfono";
const String kAddressNullError = "Por favor ingrese su dirección";

// Decoración para el campo de OTP
final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

// Método para crear un borde de entrada
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: kTextColor),
  );
}
