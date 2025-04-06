import 'package:flutter/material.dart';
class CourseCard extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> lessons;

  const CourseCard({super.key, required this.title, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF6C63FF),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          ...lessons.map((lesson) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(
                      lesson['done'] ? Icons.check_circle : Icons.radio_button_unchecked,
                      color: lesson['done'] ? Color(0xFF00D9CD) : Colors.grey,
                      size: 20,
                    ),
                    if (lesson != lessons.last)
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.grey.shade300,
                      )
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lesson['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          lesson['desc'],
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}