import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/products/products_screen.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// Usamos rutas con nombres
// Todas nuestras rutas estarán disponibles aquí
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(), // Pantalla de inicio
  SplashScreen.routeName: (context) => const SplashScreen(), // Pantalla de presentación
  SignInScreen.routeName: (context) => const SignInScreen(), // Pantalla de inicio de sesión
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(), // Pantalla de olvido de contraseña
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(), // Pantalla de inicio de sesión exitoso
  SignUpScreen.routeName: (context) => const SignUpScreen(), // Pantalla de registro
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(), // Pantalla de perfil completo
  OtpScreen.routeName: (context) => const OtpScreen(), // Pantalla de verificación OTP
  HomeScreen.routeName: (context) => const HomeScreen(), // Pantalla de inicio
  ProductsScreen.routeName: (context) => const ProductsScreen(), // Pantalla de productos
  DetailsScreen.routeName: (context) => const DetailsScreen(), // Pantalla de detalles de producto
  CartScreen.routeName: (context) => const CartScreen(), // Pantalla de carrito de compras
  ProfileScreen.routeName: (context) => const ProfileScreen(), // Pantalla de perfil de usuario
};
