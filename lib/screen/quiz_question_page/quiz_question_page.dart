import 'package:estudio/screen/quiz_question_page/quiz_image_question_page.dart';
import 'package:flutter/material.dart';

class QuizQuestionPage extends StatefulWidget {
  const QuizQuestionPage({super.key});

  @override
  State<QuizQuestionPage> createState() => _QuizQuestionPageState();
}

class _QuizQuestionPageState extends State<QuizQuestionPage> {
  int? selectedIndex;

  final List<Map<String, String>> options = [
    {'number': '1', 'label': 'One'},
    {'number': '5', 'label': 'Five'},
    {'number': '8', 'label': 'Eight'},
    {'number': '2', 'label': 'Two'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF6C63FF), size: 28),
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
              'How many basic\n steps are there in The \n Scientific Method?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344356),
              ),
            ),

            const SizedBox(height: 100),
            Expanded(
              child: GridView.builder(
                itemCount: options.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  final option = options[index];
                  final isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF30D5C8)
                              : Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            option['number']!,
                            style: TextStyle(
                              fontSize: 45,
                              color: isSelected
                                  ? const Color(0xFF30D5C8)
                                  : Color(0xFF344356),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            option['label']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: isSelected
                                  ? const Color(0xFF30D5C8)
                                  : Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed:
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const QuizImageQuestionPage()));

                  }
               ,
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
                  const Text('                      '),
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
                      Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const QuizImageQuestionPage()));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3D56F0),
                      shape: const CircleBorder(side: BorderSide.none),
                    ),
                    child: const Icon(Icons.arrow_forward,
                        color: Colors.white, size: 18),
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
