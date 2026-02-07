// lib/features/home/home_screen.dart
import 'package:flutter/material.dart';
import 'package:project_10/features/favourite/pages/favourite_screen.dart';
import 'package:project_10/core/app_colors.dart';
import 'package:project_10/core/app_text_styles.dart';
import 'package:project_10/features/home/widgets/custome_category_button.dart';
import 'package:project_10/features/home/widgets/custome_food_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = const [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Dessert',
    'Drinks',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.wb_sunny_outlined,
                  size: 35,
                  color: AppColors.accent,
                ),
                Text(
                  " Good Morning",
                  style: TextStyle(
                    color: AppColors.bodyText,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Icon(Icons.shopping_cart),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text("Category", style: AppTextStyles.sectionTitle),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FavouriteScreen();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return CustomeCategoryButton(
                    text: categories[index],
                    isSelected: isSelected,
                    onTap: () => setState(() => selectedIndex = index),
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

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
