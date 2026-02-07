// lib/features/favourite/favourite_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/core/theme/app_text_styles.dart';
import 'package:project_10/features/home/widgets/custome_food_card.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          children: [
            Row(
              children: const [
                Text("My Favourites", style: AppTextStyles.sectionTitle),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return const CustomeFoodCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
