import 'package:blogs_app/core/theme/app_theme.dart';
import 'package:blogs_app/features/auth/presentation/Pages/login_screen.dart';
import 'package:blogs_app/features/auth/presentation/Pages/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

