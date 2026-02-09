// Karim Toson || kareemtoson1@gmail.com || Mon Feb 09 2026 17:37:42

import 'package:project_10/core/data_source/models/meal_model.dart';

sealed class HomeStates {}

class HomeIntialState extends HomeStates {}

class HomeSucessState extends HomeStates {
  final List<MealModel> mealData;

  HomeSucessState({required this.mealData});
}

class HomeLoadingState extends HomeStates {}

class HomeErrorState extends HomeStates {}
