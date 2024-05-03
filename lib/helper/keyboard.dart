import 'package:flutter/cupertino.dart';

// Clase de utilidad para manejar el teclado
class KeyboardUtil {
  // Método estático para ocultar el teclado virtual
  static void hideKeyboard(BuildContext context) {
    // Obtiene el nodo de enfoque actual
    FocusScopeNode currentFocus = FocusScope.of(context);
    // Si el nodo de enfoque actual no tiene el enfoque primario, lo quita
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus(); // Oculta el teclado
    }
  }
}
