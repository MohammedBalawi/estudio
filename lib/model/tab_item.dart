import 'package:flutter/material.dart';
class TabItem extends StatelessWidget {
  final String title;
  final bool active;

  const TabItem({super.key, required this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: active ? Colors.black : Colors.black45,
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        const SizedBox(height: 4),
        if (active)
          Container(
            height: 3,
            width: 30,
            decoration: BoxDecoration(
              color: const Color(0xFF6C63FF),
              borderRadius: BorderRadius.circular(10),
            ),
          )
      ],
    );
  }
}