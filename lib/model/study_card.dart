import 'package:flutter/material.dart';
class StudyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String progressText;
  final double progressValue;
  final String imageUrl;
  final Color backgroundColor;

  const StudyCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progressText,
    required this.progressValue,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 264,
            height: 121,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
              child: Image.asset(imageUrl, width: 222, height: 111,fit: BoxFit.cover),

          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFF5468FF),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            progressText,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: progressValue,
            color: const Color(0xFF00D9CD),
            backgroundColor: const Color(0xFFE0E0E0),
          )
        ],
      ),
    );
  }
}
