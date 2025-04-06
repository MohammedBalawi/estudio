import 'package:flutter/material.dart';
import '../../../model/category_card.dart';
import '../../lesson_page/studying_course_page.dart';
import '../../studying_courses_empty_page.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Color(0xFF5468FF),
                  indicatorWeight: 3,
                  tabs: [
                    // const Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       _TabButton(title: 'ALL', selected: false),
                    //       _TabButton(title: 'STUDYING', selected: true),
                    //       _TabButton(title: 'SAVED', selected: false),
                    //     ],
                    //   ),
                    // ),
                    Tab(text: 'ALL'),
                    Tab(text: 'STUDYING'),
                    Tab(text: 'SAVED'),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryCard(title: 'Arts and Humanities', imageUrl: 'assets/image/Group 3.png'),
                      CategoryCard(title: 'Computer Science', imageUrl: 'assets/image/Rectangle Copy 2.png'),
                      CategoryCard(title: 'Economics ffffffff', imageUrl: 'assets/image/Rectangle Cdopy 3.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Expanded(
                  child: TabBarView(
                    children: [
                      CourseLessonList(), // بدل CourseTabContent
                      StudyingCoursesEmptyPage(),
                      Center(child: Text('Courses save')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF5468FF),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF6C63FF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: const Icon(Icons.bookmark_outline_rounded, color: Colors.white, size: 30),
          ),
        ),
      ),
    );
  }
}
class CourseLessonList extends StatelessWidget {
  const CourseLessonList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildChapterHeader('Fundamentals of Art'),
        _buildLessonItem('What is Art?', 'What does it really mean?', 'completed'),
        _buildLessonItem('Different Forms of Art', 'It is not just painting.', 'inProgress'),
        _buildLessonItem('Art Principles', 'Why are they important?', 'locked'),
        _buildLessonItem('Color Theory', 'Understanding color.', 'locked'),

        const SizedBox(height: 32),
        _buildChapterHeader('Approaches to Art History'),
        _buildLessonItem('An Introduction', 'Consequat nisl vel pretium', 'locked'),
        _buildLessonItem('Different forms of Art', 'Consectetur adipiscing', 'locked'),
        _buildLessonItem('Art Principles', 'Tempus quam pellentesque nec', 'locked'),
        _buildLessonItem('Color Theory', 'A iaculis at erat quam', 'locked'),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildChapterHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 8, left: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFF5468FF),
        ),
      ),
    );
  }

  Widget _buildLessonItem(String title, String subtitle, String status) {
    Color dotColor;
    IconData? icon;

    switch (status) {
      case 'completed':
        dotColor =  Colors.transparent;
        icon = Icons.circle_outlined;
        break;
      case 'inProgress':
        dotColor =  Colors.transparent;
        icon = Icons.check;
        break;
      default:
        dotColor = Colors.grey.shade300;
        icon = null;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        Column(
          children: [
            Container(
              width: 20,
              height: 20,

              decoration: BoxDecoration(
                color: dotColor,
                shape: BoxShape.circle,
              ),
              child: icon != null
                  ? Icon(icon, size: 20, color: Color(0xFF2CD9C5))
                  : null,
            ),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey.shade300,
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
