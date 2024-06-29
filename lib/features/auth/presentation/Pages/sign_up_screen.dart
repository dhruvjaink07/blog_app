import 'package:blogs_app/core/theme/app_pallet.dart';
import 'package:blogs_app/features/auth/presentation/Pages/login_screen.dart';
import 'package:blogs_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blogs_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static route () => MaterialPageRoute(builder: (context)=>const SignUpScreen());
  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            AuthField(hintText: 'Name',controller: nameController,),
            const SizedBox(
              height: 15,
            ),
            AuthField(hintText: 'Email',controller: emailController,),
            const SizedBox(
              height: 15,
            ),
            AuthField(hintText: 'Password',controller: passwordController,isObscureText: true,),
            const SizedBox(
              height: 20,
            ),
            const AuthGradientButton(buttonText: 'SignUp'),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, LoginScreen.route());
              },
              child: RichText(
                  text: TextSpan(
                text: 'Already have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppPallete.gradient2,fontWeight: FontWeight.bold),
                  )
                ]
              )),
            )
          ],
        ),
      ),
    ));
  }
}
