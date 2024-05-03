import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart'; // Importa las constantes de la aplicación.
import '../models/Product.dart'; // Importa el modelo Product.

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio; // Ancho y relación de aspecto del producto.
  final Product product; // Producto a mostrar en la tarjeta.
  final VoidCallback onPress; // Función de devolución de llamada cuando se presiona la tarjeta.

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPress, // Asigna la función de devolución de llamada al presionar la tarjeta.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02, // Relación de aspecto del contenedor de la imagen.
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1), // Color de fondo del contenedor.
                  borderRadius: BorderRadius.circular(12), // Bordes redondeados del contenedor.
                ),
                child: Image.asset(product.images[0]), // Muestra la primera imagen del producto.
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.title, // Título del producto.
              style: Theme.of(context).textTheme.bodyMedium, // Estilo de texto del tema.
              maxLines: 2, // Número máximo de líneas para el título.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}", // Precio del producto.
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {}, // Función de devolución de llamada al presionar el icono de favorito.
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg", // Icono de corazón.
                      colorFilter: ColorFilter.mode(
                          product.isFavourite
                              ? const Color(0xFFFF4848)
                              : const Color(0xFFDBDEE4),
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
