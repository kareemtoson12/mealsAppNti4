// Karim Toson || kareemtoson1@gmail.com || Mon Feb 09 2026 16:18:52

class MealModel {
  final String name;
  final String image;
  final String description;
  final String mealType;
  final int calories;

  MealModel({
    required this.name,
    required this.image,
    required this.description,
    required this.mealType,
    required this.calories,
  });

  //to json
  Map<String, dynamic> toJoson() {
    return {
      "name": name,
      "image": image,
      "description": description,
      "mealType": mealType,
      "calories": calories,
    };
  }

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      mealType: json['mealType'],
      calories: json['calories'],
    );
  }
}
