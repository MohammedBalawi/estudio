import 'package:flutter/material.dart';

import '../flashcard_mcq_page/flashcard_flip_page.dart';
import '../flashcard_mcq_page/flashcard_mcq_page.dart';

class QuizImageQuestionPage extends StatefulWidget {
  const QuizImageQuestionPage({super.key});

  @override
  State<QuizImageQuestionPage> createState() => _QuizImageQuestionPageState();
}

class _QuizImageQuestionPageState extends State<QuizImageQuestionPage> {
  int? selectedIndex;

  final List<String> options = [
    'The Astronomer',
    'Les Amants (The Lovers)',
    'Olympia',
    'Five Bathing Women at a Lake',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF5468FF), size: 28),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const Text(
              '1 of 20',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'What is the name of\nthis painting?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344356),
              ),
            ),
            const SizedBox(height: 24),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/image/Iتmage.png',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                itemCount: options.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF30D5C8)
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '${String.fromCharCode(65 + index)}.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? const Color(0xFF30D5C8)
                                  : Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              options[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: isSelected
                                    ? const Color(0xFF30D5C8)
                                    : Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),

            ElevatedButton(

               onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FlashcardMcqPage()));

              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5468FF),
                minimumSize: const Size.fromHeight(56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('                        '),
                  const Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Add login logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3D56F0),
                      shape: const CircleBorder(side: BorderSide.none),
                    ),
                    child: const Icon(Icons.arrow_forward,
                        color: Colors.white, size: 20),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
