import 'package:flutter/material.dart';

class OtherProfileCoursesPage extends StatelessWidget {
  const OtherProfileCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: [


            const SizedBox(height: 20),
            // Courses list
            _buildCourseCard(
              image: 'assets/image/imagكe.png',
              title: 'Communication',
              subtitle: '18 Chapters',
            ),
            _buildCourseCard(
              image: 'assets/image/Rectangle Copy 5.png',
              title: 'Digital World',
              subtitle: '14 Chapters',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseCard({required String image, required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Center(
        child: Container(
          width: 315,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
                child: Image.asset(image,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF344356),
                            )),
                        const SizedBox(height: 4),
                        Text(subtitle,
                            style: const TextStyle(
                              color: Color(0xFF8890A0),
                            )),
                      ],
                    ),
                    const Icon(Icons.bookmark_border, color: Color(0xFF344356)),
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
