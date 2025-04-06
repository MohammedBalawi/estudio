import 'package:flutter/material.dart';

class CourseTestsPage extends StatelessWidget {
  const CourseTestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quizzes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          _buildQuizItem(
            title: 'Scientific Method Quiz',
            questions: 8,
            duration: '10 min',
            onPressed: () {
              // يمكنك التنقل لصفحة تنفيذ الكويز هنا
            },
          ),
          _buildQuizItem(
            title: 'Biology Basics Test',
            questions: 12,
            duration: '15 min',
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildQuizItem({
    required String title,
    required int questions,
    required String duration,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF6C63FF),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text('$questions Questions • $duration',
                    style: const TextStyle(
                        fontSize: 13, color: Colors.grey)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6C63FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: const Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
