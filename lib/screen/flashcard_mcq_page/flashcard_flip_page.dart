import 'package:estudio/screen/page/courses_page/courses_screen.dart';
import 'package:estudio/screen/page/home_screen/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

import '../quiz_result_page/quiz_result_page.dart';

class FlashcardFlipPage extends StatelessWidget {
  const FlashcardFlipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF5468FF), size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: LinearProgressIndicator(
          value: 0.6,
          color: const Color(0xFF30D5C8),
          backgroundColor: Colors.grey.shade300,
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Center(
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: _buildimage(
                    context,
                    content: 'Who designed\nHelvetica font?',
                  ),
                  back: _buildCard(
                    context,
                    content: 'Max Miedinger\n(Switzerland)',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const QuizResultPage()),
              );},
              child: const Text(
                'Tap the card to flip',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 24),

          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required String content}) {
    return Container(
      width: double.infinity,
      height: 260,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Center(
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            height: 1.4,
          ),
        ),
      ),
    );
  }
  Widget _buildimage(BuildContext context, {required String content}) {
    return Container(
      height: 320.94,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Center(
        child: Image(image: AssetImage('assets/image/cards.png'),fit: BoxFit.cover,)
      ),
    );
  }
}