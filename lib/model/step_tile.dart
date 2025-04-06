import 'package:flutter/material.dart';

class _StepTile extends StatelessWidget {
  final int stepNumber;
  const _StepTile(this.stepNumber);

  final List<Map<String, String>> _steps = const [
    {'title': 'Make an observation', 'icon': 'https://cdn-icons-png.flaticon.com/512/4320/4320337.png'},
    {'title': 'Ask a Question', 'icon': 'https://cdn-icons-png.flaticon.com/512/1681/1681317.png'},
    {'title': 'Form a Hypothesis', 'icon': 'https://cdn-icons-png.flaticon.com/512/3874/3874072.png'},
    {'title': 'Make a prediction based on the hypothesis', 'icon': 'https://cdn-icons-png.flaticon.com/512/411/411763.png'},
    {'title': 'Test the prediction', 'icon': 'https://cdn-icons-png.flaticon.com/512/1106/1106874.png'},
    {'title': 'Iterate: use the results to make new hypotheses', 'icon': 'https://cdn-icons-png.flaticon.com/512/1642/1642873.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final data = _steps[stepNumber - 1];
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.network(data['icon']!, width: 36, height: 36),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Step $stepNumber\n${data['title']!}',
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}