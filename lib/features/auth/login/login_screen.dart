// lib/features/login/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/core/widgets/or_divider.dart';
import 'package:project_10/features/auth/cubit/cubit.dart';
import 'package:project_10/features/auth/cubit/states.dart'
    show AuthStates, LoginErrorState, LoginSuccessState;
import 'package:project_10/features/auth/signup/sign_up_screen.dart';
import 'package:project_10/features/auth/widgets/custome_form_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: BlocConsumer<AuthCubit, AuthStates>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login successful')),
                );
              } else if (state is LoginErrorState) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.error)));
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  const Text('Login', style: AppTextStyles.h2),
                  const SizedBox(height: 24),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Email', style: AppTextStyles.label),
                  ),
                  const SizedBox(height: 8),
                  CustomeFormTextField(
                    controller: emailController,
                    icon: Icons.alternate_email,
                    text: 'email',
                  ),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password', style: AppTextStyles.label),
                  ),
                  const SizedBox(height: 8),
                  CustomeFormTextField(
                    controller: passwordController,
                    icon: Icons.lock_outline,
                    text: 'password',
                  ),
                  const SizedBox(height: 24),

                  CustomeButton(
                    text: 'Login',
                    onTap: () {
                      BlocProvider.of<AuthCubit>(
                        context,
                      ).login(emailController.text, passwordController.text);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('didnt have an account? '),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpScreen();
                              },
                            ),
                          );
                        },
                        child: Text('SignUp'),
                      ),
                    ],
                  ),

                  const OrDivider(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
