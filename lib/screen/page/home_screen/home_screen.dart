import 'package:flutter/material.dart';

import '../../../model/study_card.dart';
import '../../search/search_courses_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Center(
                child: const Text(
                  'Hi, Antonio',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: const Text(
                  'What would you like to learn\ntoday? Search below.',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              const SizedBox(height: 24),
               Container(
                  height: 70 ,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'World H',
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(

                          decoration: BoxDecoration(
                            color: const Color(0xFF5468FF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(0),
                          child: IconButton (icon :Icon(Icons.search, color: Colors.white), onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SearchCoursesPage()),
                            );
                            },

                          ),
                        ),
                      )
                    ],

                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'STUDYING',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 287,
                width: 264,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    StudyCard(
                      title: 'Biology & The Scientific',
                      subtitle: 'Biology Basics',
                      progressText: '4 of 8 lessons',
                      progressValue: 0.5,
                      imageUrl:
                      'assets/image/image.png',
                      backgroundColor: Color(0xFFB6D3FF),
                    ),
                    SizedBox(width: 16),
                    StudyCard(
                      title: 'Earth Geological & Climatic HHistory',
                      subtitle: 'Cosmology',
                      progressText: '2 of 13 lessons',
                      progressValue: 0.15,
                      imageUrl:
                      'assets/image/imagde.png',
                      backgroundColor: Color(0xFFFFD6A5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

