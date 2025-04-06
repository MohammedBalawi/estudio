import 'package:estudio/screen/page/home_screen/main_navigation.dart';
import 'package:estudio/screen/quiz_result_page/badge_earned_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../flashcard_mcq_page/flashcard_flip_page.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6FA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF5468FF), size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MainNavigation()),
            );
          },
        ),
        toolbarHeight: 40,
      ),
      backgroundColor: const Color(0xFFF5F6FA),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/confetti.png'),
        )),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const SizedBox(height: 250),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const BadgePage()),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const SizedBox(
                      width: 180,
                      height: 180,
                      child: CircularProgressIndicator(
                        value: 1.0,
                        strokeWidth: 18,
                        backgroundColor: Color(0xFFE6F4F1),
                        color: Color(0xFF00D9CD),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF00D9CD),
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(Icons.check,
                                color: Colors.white, size: 28),
                          ),
                        ),

                        const SizedBox(height: 25),

                        const Text(
                          '100%',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF344356),
                          ),
                        ),

                        // عدد الأسئلة
                        const Text(
                          '20 of 20',
                          style: TextStyle(
                            color: Color(0xFF344356),
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: const Text(
                            '+50 XP',
                            style: TextStyle(
                              color: Color(0xFF00D9CD),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const Text('You are awesome!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                'Congratulations for getting all\n the answers correct!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: AssetImage('assets/image/Group 6.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: AssetImage('assets/image/Group 4.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: AssetImage('assets/image/Group 2.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: AssetImage('assets/image/Group.png'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
