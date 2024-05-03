import 'package:flutter/material.dart';

// Clase que representa un producto en la aplicación
class Product {
  final int id; // Identificador único del producto
  final String title, description; // Título y descripción del producto
  final List<String> images; // Lista de imágenes del producto
  final List<Color> colors; // Lista de colores disponibles para el producto
  final double rating, price; // Clasificación y precio del producto
  final bool isFavourite, isPopular; // Indicadores de favorito y popularidad

  // Constructor de la clase Product
  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Lista de productos de demostración
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Control Inalambrico PS4™",
    price: 1490,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  // Aquí se incluyen más productos de demostración...
];

// Descripción de ejemplo para los productos
const String description =
    "Control Inalambrico PS4™ te brinda lo que deseas en tus juegos, desde controlar con precisión tus juegos hasta compartir...";
