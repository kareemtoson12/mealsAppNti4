// lib/features/onboarding/onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/core/widgets/custome_button.dart';
import 'package:project_10/features/auth/login/login_screen.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/onboarding.png"),
              const SizedBox(height: 45),
              const Text(
                "Help your path to health\ngoals with happiness",
                style: AppTextStyles.h1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 35),

              CustomeButton(
                text: 'Start',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
