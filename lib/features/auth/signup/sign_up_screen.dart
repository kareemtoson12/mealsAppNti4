// lib/features/login/sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/core/widgets/or_divider.dart';
import 'package:project_10/features/auth/login/login_screen.dart';
import 'package:project_10/features/auth/widgets/custome_form_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Sign UP', style: AppTextStyles.h2),
              const SizedBox(height: 24),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Email', style: AppTextStyles.label),
              ),
              const SizedBox(height: 8),
              const CustomeFormTextField(
                icon: Icons.alternate_email,
                text: 'email',
              ),
              const SizedBox(height: 16),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Name', style: AppTextStyles.label),
              ),
              const SizedBox(height: 8),
              const CustomeFormTextField(
                icon: Icons.person_outline,
                text: 'name',
              ),
              const SizedBox(height: 16),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Password', style: AppTextStyles.label),
              ),
              const SizedBox(height: 8),
              const CustomeFormTextField(
                icon: Icons.lock_outline,
                text: 'password',
              ),
              const SizedBox(height: 24),

              CustomeButton(text: 'Sign-Up', onTap: () {}),
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
          ),
        ),
      ),
    );
  }
}
