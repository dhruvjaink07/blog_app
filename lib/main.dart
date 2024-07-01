import 'package:blogs_app/core/secrets/app_secrets.dart';
import 'package:blogs_app/core/theme/app_theme.dart';
import 'package:blogs_app/features/auth/presentation/Pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(anonKey: AppSecrets.annonKey , url: AppSecrets.supabaseUrl);
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

