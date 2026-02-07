import 'package:flutter/material.dart';

class CustomeFoodCard extends StatelessWidget {
  const CustomeFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xff0633361a),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 1,
            offset: Offset(0, 1),

            spreadRadius: 0.1,
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.topRight,
            children: [
              Image.asset(
                "assets/images/food 1.png",
                width: 180,
                fit: BoxFit.contain,
              ),
              Image.asset("assets/images/Love.png"),
            ],
          ),
          Text(
            "Healthy Taco Salad with fresh vegetable",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0A2533),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            children: [
              Icon(Icons.local_fire_department),
              Text("120 Kcal"),
              Icon(Icons.access_time),
              Text("120 Kcal"),
            ],
          ),
        ],
      ),
    );
  }
}
