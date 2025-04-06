import 'package:flutter/material.dart';

class CourseTabContent extends StatelessWidget {
  const CourseTabContent({super.key});

  Widget _buildTimelineDot({Color color = Colors.grey}) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildLessonItem({
    required String title,
    required String subtitle,
    Color dotColor = Colors.grey,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              _buildTimelineDot(color: dotColor),
              Container(
                width: 2,
                height: 40,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      children: [
        const Text(
          'Fundamentals of Art',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildLessonItem(
          title: 'What is Art?',
          subtitle: 'What does it really mean?',
          dotColor: Colors.teal,
        ),
        _buildLessonItem(
          title: 'Different Forms of Art',
          subtitle: 'It is not just painting.',
          dotColor: Colors.teal,
        ),
        _buildLessonItem(
          title: 'Art Principles',
          subtitle: 'Why are they important?',
        ),
        _buildLessonItem(
          title: 'Color Theory',
          subtitle: 'Understanding color.',
        ),
        const SizedBox(height: 24),
        const Text(
          'Approaches to Art History',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildLessonItem(
          title: 'An Introduction',
          subtitle: 'Consequat nisl vel pretium',
        ),
        _buildLessonItem(
          title: 'Different forms of Art',
          subtitle: 'Consectetur adipiscing',
        ),
        _buildLessonItem(
          title: 'Art Principles',
          subtitle: 'Tempus quam pellentesque nec',
        ),
        _buildLessonItem(
          title: 'Color Theory',
          subtitle: 'A iaculis at erat quam',
        ),
      ],
    );
  }
}
