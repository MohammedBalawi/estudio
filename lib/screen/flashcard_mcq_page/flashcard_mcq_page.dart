import 'package:flutter/material.dart';
import 'flashcard_flip_page.dart';

class FlashcardMcqPage extends StatefulWidget {
  const FlashcardMcqPage({super.key});

  @override
  State<FlashcardMcqPage> createState() => _FlashcardMcqPageState();
}

class _FlashcardMcqPageState extends State<FlashcardMcqPage> {
  int? selectedIndex;

  final List<String> answers = [
    'Eight Steps',
    'Five Steps',
    'Ten Steps',
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
        title: LinearProgressIndicator(
          value: 0.3,
          minHeight: 12,
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
          color: const Color(0xFF00D9CD),
          backgroundColor: Colors.grey.shade300,
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  const Text(
                    'How many basic steps are there in\nThe Scientific Method?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                      color: Color(0xFF344356)
                    ),
                  ),
                  const SizedBox(height: 90),
                  ...List.generate(answers.length, (index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF00D9CD)
                              : Colors.white,
                          border: Border.all(
                            color: const Color(0xFFE0E0E0),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Text(
                              String.fromCharCode(65 + index) + '.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.white : Colors.black87,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              answers[index],
                              style: TextStyle(
                                fontWeight:isSelected? FontWeight.bold : FontWeight.w500,
                                fontSize: 16,
                                color: isSelected ? Colors.white : Colors.black87,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),

        SizedBox(height: 80,),
            ElevatedButton(
              onPressed: selectedIndex != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const FlashcardFlipPage()),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6C63FF),
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
          ],
        ),
      ),
    );
  }
}