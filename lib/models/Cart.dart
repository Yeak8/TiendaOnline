import 'Product.dart';

// Clase que representa un elemento en el carrito de compras
class Cart {
  final Product product; // Producto agregado al carrito
  final int numOfItem; // Cantidad del producto en el carrito

  // Constructor de la clase Cart
  Cart({required this.product, required this.numOfItem});
}

// Datos de demostración para nuestro carrito de compras
List<Cart> demoCarts = [
  Cart(
      product: demoProducts[0],
      numOfItem: 2), // Dos unidades del primer producto
  Cart(
      product: demoProducts[0],
      numOfItem: 1), // Una unidad del segundo producto
  Cart(
      product: demoProducts[3], numOfItem: 1), // Una unidad del cuarto producto
];
