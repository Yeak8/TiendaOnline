import 'package:flutter/material.dart';

import '../../constants.dart';

import 'components/otp_form.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verificación OTP"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Verificación OTP",
                  style: headingStyle,
                ),
                const Text("Nosotras enviamos tu codigo a +52 999 951 1***"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Este código caducará en "),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0.0),
                      duration: const Duration(seconds: 30),
                      builder: (_, dynamic value, child) => Text(
                        "00:${value.toInt()}",
                        style: const TextStyle(color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const OtpForm(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: const Text(
                    "Reenviar código OTP",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
