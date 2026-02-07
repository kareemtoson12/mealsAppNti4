// lib/features/login/sign_up_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/core/widgets/or_divider.dart';
import 'package:project_10/features/auth/pages/widgets/custome_form_text_field.dart';
import 'package:project_10/core/theme/app_colors.dart';
import 'package:project_10/core/theme/app_text_styles.dart';

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
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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

                  const OrDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
