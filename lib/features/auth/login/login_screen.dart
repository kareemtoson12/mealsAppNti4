// lib/features/login/login_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/core/widgets/or_divider.dart';
import 'package:project_10/features/auth/signup/sign_up_screen.dart';
import 'package:project_10/features/auth/widgets/custome_form_text_field.dart';
import 'package:project_10/features/home/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Column(
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
              const CustomeFormTextField(
                icon: Icons.alternate_email,
                text: 'email',
              ),

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

              CustomeButton(
                text: 'Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
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
          ),
        ),
      ),
    );
  }
}
