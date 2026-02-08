import 'package:flutter/material.dart';

class CustomeFormTextField extends StatelessWidget {
  const CustomeFormTextField({
    super.key,
    required this.icon,
    required this.text,
    required this.controller,
  });
  final IconData icon;
  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hint: Row(
          spacing: 10,
          children: [
            Icon(icon, color: Color(0xff6A6A6A), size: 30),
            Text(
              text,
              style: TextStyle(color: Color(0xff6A6A6A), fontSize: 18),
            ),
          ],
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
