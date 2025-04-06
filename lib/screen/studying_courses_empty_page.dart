import 'package:flutter/material.dart';

import 'lesson_page/studying_course_page.dart'; // استبدل بالمسار الصحيح

class StudyingCoursesEmptyPage extends StatelessWidget {
  const StudyingCoursesEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),

        Image.asset(
          'assets/image/artمwork.png',
          height: 200,
        ),
        const SizedBox(height: 32),
        const Text(
          'No Courses!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Choose a course from Courses tab or use the button below to start.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StudyingCourseLessonPage()), // صفحة 10.1
            );
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF6C63FF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 32),
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}

class _TabButton extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabButton({required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: selected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
