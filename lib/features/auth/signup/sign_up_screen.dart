// lib/features/login/sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/core/widgets/or_divider.dart';
import 'package:project_10/features/auth/cubit/cubit.dart';
import 'package:project_10/features/auth/cubit/states.dart';
import 'package:project_10/features/auth/login/login_screen.dart';
import 'package:project_10/features/auth/widgets/custome_form_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: BlocConsumer<AuthCubit, AuthStates>(
            listener: (context, state) {
              if (state is SignUpSuccessState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sign-Up successful')),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              } else if (state is SignUpErrorState) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.error)));
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Sign UP', style: AppTextStyles.h2),
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
                  const SizedBox(height: 16),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Name', style: AppTextStyles.label),
                  ),
                  const SizedBox(height: 8),
                  CustomeFormTextField(
                    controller: nameController,
                    icon: Icons.person_outline,
                    text: 'name',
                  ),
                  const SizedBox(height: 16),

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
                    text: 'Sign-Up',
                    onTap: () {
                      BlocProvider.of<AuthCubit>(context).signUp(
                        emailController.text,
                        passwordController.text,
                        nameController.text,
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('already have an account? '),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                        child: Text('Login'),
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
