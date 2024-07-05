import 'package:blogs_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [AppPallete.gradient1, AppPallete.gradient2])),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(396, 55),
              backgroundColor: AppPallete.transparentColor,
              shadowColor: AppPallete.transparentColor),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 17),
          )),
    );
  }
}
