import 'package:flutter/material.dart';

class CustomeCategoryButton extends StatelessWidget {
  const CustomeCategoryButton({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });

  final bool isSelected;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xff70B9BE) : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
          minimumSize: const Size(0, 40),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
