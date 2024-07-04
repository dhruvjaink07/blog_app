import 'package:blogs_app/core/secrets/app_secrets.dart';
import 'package:blogs_app/core/theme/app_theme.dart';
import 'package:blogs_app/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:blogs_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:blogs_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:blogs_app/features/auth/presentation/Pages/login_screen.dart';
import 'package:blogs_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      anonKey: AppSecrets.annonKey, url: AppSecrets.supabaseUrl);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (_) => AuthBloc(
            userSignUp: UserSignUp(
                authRepository: AuthRepositoryImpl(
                    AuthRemoteDataSourceImpl(supabase.client)))))
  ], child: const MyApp()));
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
